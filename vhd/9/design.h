//-----------------------------------------------------
// A 4 bit up-counter with synchronous active high reset
// and with active high enable signal
// Example from www.asic-world.com
//-----------------------------------------------------
#include "systemc.h"

SC_MODULE (gray_counter) {
  sc_in_clk     clk_i ;      // Clock input of the design
  sc_in<bool>   rst_i ;      // active high, synchronous Reset input  
  sc_out<sc_uint<3> > led_o; // 8 bit vector output of the Johnson's counter

  //------------Local Variables Here---------------------
  sc_uint<3>	counter;

  //------------Code Starts Here-------------------------
  // Below function implements actual counter logic
  void gray_process () {
    // At every rising edge of clock we check if reset is active    
    if (reset.read() == 1) {
      gray_counter =  0;
    }     
    else {
        if counter = 15{
          counter = 0;
        }else{
          counter = counter + 1;
        }
        led_o.write(counter xor (counter<<1));
      // cout<<"@" << sc_time_stamp() <<" :: Incremented Counter "
        // <<counter_out.read()<<endl;
    }
  } // End of function johnson_process

  // Constructor for the counter
  // Since this counter is a positive edge trigged one,
  // We trigger the below block with respect to positive
  // edge of the clock and also when ever reset changes state
  SC_CTOR(gray_counter) {
    cout<<"Executing new"<<endl;
    SC_METHOD(gray_process);
    sensitive << reset;
    sensitive << clock.pos();
  } // End of Constructor

}; // End of Module 
