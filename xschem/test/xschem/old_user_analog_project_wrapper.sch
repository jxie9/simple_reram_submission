v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} -260 -450 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} -260 -420 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} -260 -390 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} -260 -360 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} -260 -330 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} -260 -300 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} -260 -270 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} -260 -240 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} -210 -170 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} -210 -140 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} -210 -110 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} -210 -80 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} -210 -50 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} -210 -20 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} -210 10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} -210 40 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} -220 100 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} -220 130 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} -210 170 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} -220 200 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} -210 280 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} -210 310 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} -220 590 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} -220 340 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} -220 370 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} -250 430 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} -250 460 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} -250 490 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} -250 520 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} -250 550 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} -230 620 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} -210 230 0 0 {name=p28 lab=la_oenb[127:0]}
C {4x4crossbar.sym} 370 0 0 1 {name=x2}
C {devices/lab_pin.sym} 220 -120 0 0 {name=p33 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 220 100 0 0 {name=l17 sig_type=std_logic lab=io_analog[0]}
C {devices/lab_pin.sym} 220 120 0 0 {name=l18 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_pin.sym} 220 80 0 0 {name=l19 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} 220 60 0 0 {name=l20 sig_type=std_logic lab=io_analog[1]}
C {devices/lab_pin.sym} 220 0 0 0 {name=p34 sig_type=std_logic lab=la_data_in[115]}
C {devices/lab_pin.sym} 220 -20 0 0 {name=p35 sig_type=std_logic lab=la_data_in[116]}
C {devices/lab_pin.sym} 220 40 0 0 {name=p36 sig_type=std_logic lab=la_data_in[117]}
C {devices/lab_pin.sym} 220 20 0 0 {name=p37 sig_type=std_logic lab=la_data_in[118]}
C {devices/lab_pin.sym} 220 -60 0 0 {name=l21 sig_type=std_logic lab=gpio_analog[9]}
C {devices/lab_pin.sym} 220 -40 0 0 {name=l22 sig_type=std_logic lab=gpio_analog[7]}
C {devices/lab_pin.sym} 220 -80 0 0 {name=l23 sig_type=std_logic lab=gpio_analog[8]}
C {devices/lab_pin.sym} 220 -100 0 0 {name=l24 sig_type=std_logic lab=gpio_analog[10]}
