#include <stdio.h>
#include "xparameters.h"
#include "xgpio.h"

#define LED_4 0x08
#define LED_3 0x04
#define LED_2 0x02
#define LED_1 0x01
#define LED_CHANNEL 1
#define ANODE_CHANNEL 2
#define SEG_CHANNEL 1


volatile int X, Y, Z, T;
volatile unsigned char isError;

volatile int old_X = -1;
volatile unsigned char seg7[8];
volatile unsigned char seg_cycle = 0x00;
volatile unsigned char seg_power = 8;
volatile unsigned char seg_an = 0x80;
volatile unsigned char seg_an_index = 7;

XGpio gpio_led;
XGpio gpio_seg;

int init_gpio() {
  int Status;
  Status = XGpio_Initialize(&gpio_led, XPAR_GPIO_1_DEVICE_ID);
  if (Status != XST_SUCCESS) {
    xil_printf("Gpio Initialization Failed\r\n");
    return XST_FAILURE;
  }
  Status = XGpio_Initialize(&gpio_seg, XPAR_GPIO_0_DEVICE_ID);
  if (Status != XST_SUCCESS) {
    xil_printf("Gpio Initialization Failed\r\n");
    return XST_FAILURE;
  }
  XGpio_SetDataDirection(&gpio_led, LED_CHANNEL,
                         ~(LED_4 | LED_3 | LED_2 | LED_1));
  XGpio_SetDataDirection(&gpio_seg, SEG_CHANNEL, 0x00);
  XGpio_SetDataDirection(&gpio_seg, ANODE_CHANNEL, 0x00);

  return 0;
}

void read_uart() {
  int chr;
  int shd = 0;
  int rX = 0;
  while (1) {
    chr = getchar();
    shd = 0;
    switch (chr) {
    case '\n':

      break;
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      if (rX) {
        X = 0;
        rX = 0;
      }
      X *= 10;
      X += chr - '0';
      break;

    case '.':
      if (seg_power < 16) {
        seg_power++;
      }
      break;
    case ',':
      if (seg_power > 8) {
        seg_power--;
      }
      break;
    case 'C':
      X = 0;
      break;
    case 'R': {
      int tmp = X;
      X = Y;
      Y = Z;
      Z = T;
      T = tmp;
    } break;
    case 'S':
      X *= -1;
      break;
    case '/':
    case '\\':
      Y = Y / X;
      shd = 1;
      break;
    case '*':
      Y = Y * X;
      shd = 1;
      break;
    case '+':
      Y = Y + X;
      shd = 1;
      break;
    case '-':

      Y = Y - X;
      shd = 1;
      break;
    case '\0':
      return;
    default:
      break;
    }

    if (shd) {
      X = Y;
      Y = Z;
      Z = T;
      rX = 1;
    }
  }
}

void handle_leds() {
  static unsigned char leds[] = {LED_1, LED_2, LED_3};
  static int *registers[] = {&T, &Z, &Y};

  for (int i = 0; i < 4; i++) {
    if (*registers[i] == 0) {
      XGpio_DiscreteClear(&gpio_led, LED_CHANNEL, leds[i]);
    } else {
      XGpio_DiscreteSet(&gpio_led, LED_CHANNEL, leds[i]);
    }
  }
}

const unsigned char segments[] = {
    0b11000000, // 0
    0b11111001, // 1
    0b10100100, // 2
    0b10110000, // 3
    0b10011001, // 4
    0b10010010, // 5
    0b10000010, // 6
    0b11111000, // 7
    0b10000000, // 8
    0b10010000, // 9
    0b10001000, // A
    0b10000011, // b
    0b11000110, // C
    0b10100001, // d
    0b10000110, // E
    0b10001110  // F
};

const unsigned char error_seg[8] = {
	0xFF,
	0xFF,
	0xFF,
    0b10101111,  // R
    0b10100011, // O
    0b10101111, // R
    0b10101111, // R
	0b10000110, // E
};

void regenerate_seg() {
  if (isError) {
    for (int i=0; i<8; i++) {
        seg7[i] = error_seg[i];
    }
  }
  
  if (old_X != X) {
    old_X = X;
    for (int i = 0; i < 8; i++) {
      seg7[i] = 0xFF;
    }
    if (X < 0) {
      seg7[7] = 0x70; // TODO: set to - char
    }

    int tmp = X;
    for (int i = 0; i < (X < 0 ? 7 : 8); i++) {
      seg7[i] = segments[tmp % 10];
      tmp /= 10;
      if (tmp == 0) {
        break;
      }
    }
    if (tmp != 0) {
      // TODO: handle unprintable int
    }
  }
}

void handle_timer_interupt() {
  handle_leds();
  regenerate_seg();

  if (seg_cycle <= (16 - seg_power) * 2 && seg_cycle & 0x01) {
    XGpio_DiscreteWrite(&gpio_seg, ANODE_CHANNEL , ~seg_an);
    XGpio_DiscreteWrite(&gpio_seg, SEG_CHANNEL, seg7[seg_an_index]);

    seg_an >>= 1;
    seg_an_index -= 1;
    if (seg_an == 0) {
      seg_an = 0x80;
      seg_an_index = 7;
    }
  }
  seg_cycle++;
  seg_cycle &= 0b00001111;
}
