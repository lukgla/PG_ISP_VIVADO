#include "no_blob.h"

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
    // chr = inbyte();
    switch (chr) {
      case 'Z':
        vga_clear();
        break;
      case 'C':
        r = read_number_from_uart();
        g = read_number_from_uart();
        b = read_number_from_uart();
        break;
      case 'U':
      case 'D':
      case 'L':
      case 'R':
        times = read_number_from_uart();
        dx=0;
        dy=0;
        if(chr == 'U'){
          dy = -1;
        }else if (chr=='D') {
          dy = 1;
        }else if (chr == 'L'){
          dx = -1;
        }else{
          dx = 1;
        }
        for (; times > 0; times--) {
          if (dx && in_between(x, dx, 0, 384)) {
            x+=dx;
            VGA_SET(x, y, r, g, b);
          }else if (dy && in_between(y, dy, 0, 341)) {
            y+=dy;
            VGA_SET(x, y, r, g, b);
          }else{
            break;
          }      
        }
        break;
      default:
        break;
    }
  }
}