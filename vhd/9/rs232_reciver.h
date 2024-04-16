//-----------------------------------------------------
// A 4 bit up-counter with synchronous active high reset
// and with active high enable signal
// Example from www.asic-world.com
//-----------------------------------------------------
#include "systemc.h"

SC_MODULE (rs232_reciver) {
  sc_in_clk     clk_i ;    
  sc_in<bool>   rst_i ;
  sc_in<bool>   RXD_i ;
  sc_out<sc_uint<4>> led7_an_o;
  sc_out<sc_uint<8>> led7_seg_o;


  //------------Local Variables Here---------------------
  sc_lv<8>	seg[16] = {
        "00000011",
        "10011111",
        "00100101",
        "00001101",
        "10011001",
        "01001001",
        "01000001",
        "00011111",
        "00000001",
        "00001001",
        "00010001",
        "11000001",
        "11100101",
        "10000101",
        "01100001",
        "01110001"
  };
  sc_uint<4>	clock_16;
  sc_uint<8>	bit_buffer;
  sc_uint<32>	digit_i;

  sc_signal<bool> baudrate = false;
  typedef enum {Listen,Start,Recive,Stop,Error} reciver_status;
  reciver_status status = Listen;   

  //------------Code Starts Here-------------------------
  // Below function implements actual counter logic
  void rs232_reciver_process () {
    // At every rising edge of clock we check if reset is active    
    if (reset.read() == 1) {
        status = Listen;
        clock_16 = 0;
    }     
    else {
        
    }
  }
  SC_CTOR(rs232_reciver) {
    SC_METHOD(rs232_reciver_process);
    sensitive << reset;
    sensitive << clock.pos();
  }

};
