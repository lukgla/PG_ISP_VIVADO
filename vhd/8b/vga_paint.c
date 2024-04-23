#include "vga_paint.h"

char * vga_base_addr = ( char*)0xFF; // TODO from Xparam 
#define VGA_SET_RAW(x,y,c) vga_base_addr[y*384 + x] = c;
#define VGA_SET(x,y,r,g,b) vga_base_addr[y*384 + x] = ((r>>1 & 0b111)<<5) | ((g>>1 &0b111)<<2) | (b>>2&0b11);

void vga_clear(){
  for (int y=0; y<341; y++) {
    for (int x=0; x<384; x++) {
      VGA_SET_RAW(x, y, 0);
    }
  }
}

void vga_squares(){
  unsigned char color = 0;
  for (int y=0; y<341/12; y++) {
    for (int x=0; x<384/12; x++) {
      //square
      for (int dy=0; dy<12; dy++) {
        for (int dx; dx < 12; dx++) {
          VGA_SET_RAW(x*12+dx, y*12+dx, color)
        }
      }
      color++;
    }
  }
}

int read_number_from_uart() {
  int number = 0;
  char chr = inbyte();
  int got_nr = 0;
  while (1) {
    if (chr >= '0' && chr <= '9') {
      got_nr = 1;
      number*=10;
      number += chr - '0';
    }else if (got_nr){
      return number;
    }
    chr = inbyte();
  }
}

int in_between(int x,int dx,int lb,int ub){
  int nx = x+dx;
  return nx >= lb && nx < ub;
}



void read_uart() {
  int chr;
  int r= 0xFF,g= 0xFF,b = 0xFF;
  int x=384/2,y=341/2;
  int dx,dy;
  int times = 0; 
  while (1) {
    chr = inbyte();
    dx=0;
    dy=0;
    switch (chr) {
      case 'L':
        vga_clear();
        break;
      case 'P':
        r = read_number_from_uart();
        g = read_number_from_uart();
        b = read_number_from_uart();
        break;
      case 'W':
        dy = -1;
        break;
      case 'S':
        dy = 1;
        break;
      case 'A':
        dx = -1;
        break;
      case 'D':
        dx = 1;
        break;
      case 'Q':
        dx = -1;
        dy = -1;
        break;
      case 'E':
        dx = 1;
        dy =-1;
        break;
      case 'Z':
        dx = -1;
        dy = 1;
        break;
      case 'C':
        dx = 1;
        dy = 1;
        break;
      default:
        break;
    }
    if (dx || dy) {
      times = read_number_from_uart();
      for (; times > 0; times--) {
        if (in_between(x, dx, 0, 384) && in_between(y, dy, 0, 341)) {
          x+=dx;
          y+=dy;
          VGA_SET(x, y, r, g, b);
        }else{
          break;
        }      
      }
    }
  }
}