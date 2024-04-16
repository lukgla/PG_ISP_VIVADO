#include "systemc.h"

SC_MODULE(clk_div){
  sc_in_clk clk_i;
  sc_out_clk clk_o;
  int divider_counter;
  int ratio;

  void clk_div_process(){
    if(divider_counter == ratio){
      clk_o = true;
      divider_counter = 1;
      return;
    }
    if((divider_counter >= ratio) && clk_o){
      clk_o = false;
    }
    
    divider_counter ++;
  }

  typedef clk_div SC_CURRENT_USER_MODULE;
  clk_div(sc_module_name name, int ratio) : sc_module(name), ratio(ratio), divider_counter(2*ratio){

    SC_METHOD(clk_div_process);
    sensitive << clk_i.pos();
  }

};