set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS33 } [get_ports sw_virtual_i[0] ]; #virtual SW0
set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports sw_virtual_i[1] ]; #virtual SW1
set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS33 } [get_ports sw_virtual_i[2] ]; #virtual SW2
set_property -dict { PACKAGE_PIN D14 IOSTANDARD LVCMOS33 } [get_ports sw_virtual_i[3] ]; #virtual SW3
set_property -dict { PACKAGE_PIN G18 IOSTANDARD LVCMOS33 } [get_ports sw_virtual_i[4] ]; #virtual SW4
set_property -dict { PACKAGE_PIN F18 IOSTANDARD LVCMOS33 } [get_ports sw_virtual_i[5] ]; #virtual SW5
set_property -dict { PACKAGE_PIN E17 IOSTANDARD LVCMOS33 } [get_ports sw_virtual_i[6] ]; #virtual SW6
set_property -dict { PACKAGE_PIN D17 IOSTANDARD LVCMOS33 } [get_ports sw_virtual_i[7] ]; #virtual SW7

set_property -dict { PACKAGE_PIN C17 IOSTANDARD LVCMOS33 } [get_ports btn_virtual_i[0] ]; #virtual BTN0
set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports btn_virtual_i[1] ]; #virtual BTN1
set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS33 } [get_ports btn_virtual_i[2] ]; #virtual BTN2
set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS33 } [get_ports btn_virtual_i[3] ]; #virtual BTN3

set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { ps2_clk_virtual_i }]; 
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { ps2_data_virtual_i }];


## http://www.ue.eti.pg.gda.pl/fpgalab_new/index.php?id=instrukcja-zdalnej-realizacji-laboratoriow-fpga-w-sali-308-n-praca-z-ukladami-fpga