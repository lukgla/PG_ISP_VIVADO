/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "platform.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <stdio.h>

// LEDS
#define LED_4 0x08
#define LED_3 0x04
#define LED_2 0x02
#define LED_1 0x01
#define LED_CHANNEL 1
#define ANODE_CHANNEL 2

// GPIO
#define GPIO_DEVICE_ID XPAR_GPIO_0_DEVICE_ID

/***************** Macros (Inline Functions) Definitions *********************/

#ifdef PRE_2_00A_APPLICATION

/*
 * The following macros are provided to allow an application to compile that
 * uses an older version of the driver (pre 2.00a) which did not have a channel
 * parameter. Note that the channel parameter is fixed as channel 1.
 */
#define XGpio_SetDataDirection(InstancePtr, DirectionMask)                     \
  XGpio_SetDataDirection(InstancePtr, LED_CHANNEL, DirectionMask)

#define XGpio_DiscreteRead(InstancePtr)                                        \
  XGpio_DiscreteRead(InstancePtr, LED_CHANNEL)

#define XGpio_DiscreteWrite(InstancePtr, Mask)                                 \
  XGpio_DiscreteWrite(InstancePtr, LED_CHANNEL, Mask)

#define XGpio_DiscreteSet(InstancePtr, Mask)                                   \
  XGpio_DiscreteSet(InstancePtr, LED_CHANNEL, Mask)

#endif
// interupt
#ifdef XPAR_INTC_0_DEVICE_ID
#include "xintc.h"
#include <stdio.h>
#else
#include "xil_printf.h"
#include "xscugic.h"
#endif

#define TMRCTR_DEVICE_ID XPAR_TMRCTR_0_DEVICE_ID
#define TMRCTR_INTERRUPT_ID XPAR_INTC_0_TMRCTR_0_VEC_ID

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_ID XPAR_INTC_0_DEVICE_ID
#else
#define INTC_DEVICE_ID XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif /* XPAR_INTC_0_DEVICE_ID */

#define TIMER_RESET_VALUE 0xF0000000

int TmrCtrIntrExample(INTC *IntcInstancePtr, XTmrCtr *InstancePtr, u16 DeviceId,
                      u16 IntrId, u8 TmrCtrNumber);

static int TmrCtrSetupIntrSystem(INTC *IntcInstancePtr, XTmrCtr *InstancePtr,
                                 u16 DeviceId, u16 IntrId, u8 TmrCtrNumber);

static void TimerCounterHandler(void *CallBackRef, u8 TmrCtrNumber);

static void TmrCtrDisableIntr(INTC *IntcInstancePtr, u16 IntrId);

INTC InterruptController; /* The instance of the Interrupt Controller */
XTmrCtr TimerCounterInst; /* The instance of the Timer Counter */
volatile int TimerExpired;

XGpio Gpio;

volatile int X, Y, Z, T;
volatile bool isError;
volatile int old_X = -1;
volatile unsigned char led7[8];
volatile unsigned char led_cycle = 0x00;
volatile unsigned char led_power = 8;
volatile unsigned char led_an = 0x80;
volatile unsigned char led_an_index = 7;

int main() {
  init_platform();

  int Status;
  volatile int Delay;

  Status = XGpio_Initialize(&Gpio, GPIO_DEVICE_ID);
  if (Status != XST_SUCCESS) {
    xil_printf("Gpio Initialization Failed\r\n");
    return XST_FAILURE;
  }
  XGpio_SetDataDirection(&Gpio, LED_CHANNEL, ~(LED_4 | LED_3 | LED_2 | LED_1))

      Status = TmrCtrIntrExample(&InterruptController, &TimerCounterInst,
                                 TMRCTR_DEVICE_ID, TMRCTR_INTERRUPT_ID,
                                 TIMER_CNTR_0);
  if (Status != XST_SUCCESS) {
    xil_printf("Tmrctr interrupt Example Failed\r\n");
    return XST_FAILURE;
  }

  int chr;
  bool shd = 0;
  bool rX = 0;
  // print("Hello World\n\r");
  while (true) {
    chr = read();
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
      if (led_power < 16) {
        led_power++;
      }
      break;
    case ',':
      if (led_power > 8) {
        led_power--;
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
    break : case '-':
      Y = Y - X;
      shd = 1;
      break;
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

  cleanup_platform();
  return 0;
}

int TmrCtrIntrExample(INTC *IntcInstancePtr, XTmrCtr *TmrCtrInstancePtr,
                      u16 DeviceId, u16 IntrId, u8 TmrCtrNumber) {
  int Status;
  int LastTimerExpired = 0;

  /*
   * Initialize the timer counter so that it's ready to use,
   * specify the device ID that is generated in xparameters.h
   */
  Status = XTmrCtr_Initialize(TmrCtrInstancePtr, DeviceId);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  /*
   * Perform a self-test to ensure that the hardware was built
   * correctly, use the 1st timer in the device (0)
   */
  Status = XTmrCtr_SelfTest(TmrCtrInstancePtr, TmrCtrNumber);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  /*
   * Connect the timer counter to the interrupt subsystem such that
   * interrupts can occur.  This function is application specific.
   */
  Status = TmrCtrSetupIntrSystem(IntcInstancePtr, TmrCtrInstancePtr, DeviceId,
                                 IntrId, TmrCtrNumber);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  /*
   * Setup the handler for the timer counter that will be called from the
   * interrupt context when the timer expires, specify a pointer to the
   * timer counter driver instance as the callback reference so the
   * handler is able to access the instance data
   */
  XTmrCtr_SetHandler(TmrCtrInstancePtr, TimerCounterHandler, TmrCtrInstancePtr);

  /*
   * Enable the interrupt of the timer counter so interrupts will occur
   * and use auto reload mode such that the timer counter will reload
   * itself automatically and continue repeatedly, without this option
   * it would expire once only
   */
  XTmrCtr_SetOptions(TmrCtrInstancePtr, TmrCtrNumber,
                     XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);

  /*
   * Set a reset value for the timer counter such that it will expire
   * eariler than letting it roll over from 0, the reset value is loaded
   * into the timer counter when it is started
   */
  XTmrCtr_SetResetValue(TmrCtrInstancePtr, TmrCtrNumber, RESET_VALUE);

  /*
   * Start the timer counter such that it's incrementing by default,
   * then wait for it to timeout a number of times
   */
  XTmrCtr_Start(TmrCtrInstancePtr, TmrCtrNumber);

  while (1) {
    /*
     * Wait for the first timer counter to expire as indicated
     * by the shared variable which the handler will increment
     */
    while (TimerExpired == LastTimerExpired) {
    }
    LastTimerExpired = TimerExpired;

    /*
     * If it has expired a number of times, then stop the
     * timer counter and stop this example
     */
    if (TimerExpired == 3) {

      XTmrCtr_Stop(TmrCtrInstancePtr, TmrCtrNumber);
      break;
    }
  }

  TmrCtrDisableIntr(IntcInstancePtr, IntrId);
  return XST_SUCCESS;
}

// This modified
void TimerCounterHandler(void *CallBackRef, u8 TmrCtrNumber) {
  XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;

  /*
   * Check if the timer counter has expired, checking is not necessary
   * since that's the reason this function is executed, this just shows
   * how the callback reference can be used as a pointer to the instance
   * of the timer counter that expired, increment a shared variable so
   * the main thread of execution can see the timer expired
   */
  // if (XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber)) {
  // 	TimerExpired++;
  // 	if (TimerExpired == 3) {
  // 		XTmrCtr_SetOptions(InstancePtr, TmrCtrNumber, 0);
  // 	}
  // }
  static unsigned char leds[] =
  { LED_1,
    LED_2,
    LED_3 } static *
      int registers[] =
  { &T,
    &Z,
    &Y }

  for (int i = 0; i < 4; i++) {
    if (*registers[i] == 0) {
      XGpio_DiscreteClear(&Gpio, LED_CHANNEL, leds[i]);
    } else {
      XGpio_DiscreteSet(&Gpio, LED_CHANNEL, leds[i]);
    }
  }

  const unsigned char seg7_numbers[16] = {
      0b00000011, 0b10011111, 0b00100101, 0b00001101, 0b10011001, 0b01001001,
      0b01000001, 0b00011111, 0b00000001, 0b00010001, 0b00001001, 0b11000001,
      0b01100011, 0b10000101, 0b01100001, 0b01110001};

  if (old_X != X) {
    old_X = X;
    for (int i = 0; i < 8; i++) {
      seg7[i] = 0;
    }
    if (X < 0) {
      seg7[7] = 0x70; // TODO: set to - char
    }

    int tmp = X;
    for (int i = 0; i < (X < 0 ? 7 : 8); i++) {
      seg7[i] = seg7_numbers[tmp % 10];
      tmp /= 10;
      if (tmp == 0) {
        break;
      }
    }
    if (tmp != 0) {
      // TODO: handle unprintable int
    }
  }

  // TODO: print to led
  if (led_cycle <= (16 - led_power) * 2 && led_cycle & 0x01) {
    XGpio_DiscreteSet(&Gpio, ANODE_CHANNEL, ~led_an);
    XGpio_DiscreteSet(&Gpio, LED_CHANNEL, leds[led_an_index]);

    led_an >>= 1;
    led_an_index -= 1;
    if (led_an == 0) {
      led_an = 0x80;
      led_an_index = 7;
    }
  }
  led_cycle++;
  led_cycle &= 0b00001111;
}

static int TmrCtrSetupIntrSystem(INTC *IntcInstancePtr,
                                 XTmrCtr *TmrCtrInstancePtr, u16 DeviceId,
                                 u16 IntrId, u8 TmrCtrNumber) {
  int Status;

#ifdef XPAR_INTC_0_DEVICE_ID
#ifndef TESTAPP_GEN
  /*
   * Initialize the interrupt controller driver so that
   * it's ready to use, specify the device ID that is generated in
   * xparameters.h
   */
  Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
  if (Status != XST_SUCCESS)
    return XST_FAILURE;
#endif
  /*
   * Connect a device driver handler that will be called when an interrupt
   * for the device occurs, the device driver handler performs the
   * specific interrupt processing for the device
   */
  Status = XIntc_Connect(IntcInstancePtr, IntrId,
                         (XInterruptHandler)XTmrCtr_InterruptHandler,
                         (void *)TmrCtrInstancePtr);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

#ifndef TESTAPP_GEN
  /*
   * Start the interrupt controller such that interrupts are enabled for
   * all devices that cause interrupts, specific real mode so that
   * the timer counter can cause interrupts thru the interrupt controller.
   */
  Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }
#endif

  /*
   * Enable the interrupt for the timer counter
   */
  XIntc_Enable(IntcInstancePtr, IntrId);

#else

#ifndef TESTAPP_GEN
  XScuGic_Config *IntcConfig;

  /*
   * Initialize the interrupt controller driver so that it is ready to
   * use.
   */
  IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
  if (NULL == IntcConfig) {
    return XST_FAILURE;
  }

  Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
                                 IntcConfig->CpuBaseAddress);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }
#endif /* TESTAPP_GEN */

  XScuGic_SetPriorityTriggerType(IntcInstancePtr, IntrId, 0xA0, 0x3);

  /*
   * Connect the interrupt handler that will be called when an
   * interrupt occurs for the device.
   */
  Status = XScuGic_Connect(IntcInstancePtr, IntrId,
                           (Xil_ExceptionHandler)XTmrCtr_InterruptHandler,
                           TmrCtrInstancePtr);
  if (Status != XST_SUCCESS) {
    return Status;
  }

  /*
   * Enable the interrupt for the Timer device.
   */
  XScuGic_Enable(IntcInstancePtr, IntrId);
#endif /* XPAR_INTC_0_DEVICE_ID */

#ifndef TESTAPP_GEN
  /*
   * Initialize the exception table.
   */
  Xil_ExceptionInit();

  /*
   * Register the interrupt controller handler with the exception table.
   */
  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                               (Xil_ExceptionHandler)INTC_HANDLER,
                               IntcInstancePtr);

  /*
   * Enable non-critical exceptions.
   */
  Xil_ExceptionEnable();

#endif
  return XST_SUCCESS;
}

void TmrCtrDisableIntr(INTC *IntcInstancePtr, u16 IntrId) {
  /*
   * Disable the interrupt for the timer counter
   */
#ifdef XPAR_INTC_0_DEVICE_ID
  XIntc_Disable(IntcInstancePtr, IntrId);
#else
  /* Disconnect the interrupt */
  XScuGic_Disable(IntcInstancePtr, IntrId);
  XScuGic_Disconnect(IntcInstancePtr, IntrId);
#endif
}
