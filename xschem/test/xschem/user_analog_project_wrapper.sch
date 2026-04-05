v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} -730 -560 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} -730 -530 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} -730 -500 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} -730 -470 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} -730 -440 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} -730 -410 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} -730 -380 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} -730 -350 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} -680 -280 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} -680 -250 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} -680 -220 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} -680 -190 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} -680 -160 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} -680 -130 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} -680 -100 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} -680 -70 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} -690 -10 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} -690 20 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} -680 60 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} -690 90 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} -680 170 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} -680 200 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} -690 480 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} -690 230 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} -690 260 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} -720 320 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} -720 350 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} -720 380 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} -720 410 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} -720 440 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} -700 510 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} -680 120 0 0 {name=p28 lab=la_oenb[127:0]}
C {devices/lab_pin.sym} -130 80 0 0 {name=l145 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -130 100 0 0 {name=l103 sig_type=std_logic lab=gpio_analog[10]}
C {devices/lab_pin.sym} -130 120 0 0 {name=l1 sig_type=std_logic lab=gpio_analog[9]}
C {devices/lab_pin.sym} -130 140 0 0 {name=l2 sig_type=std_logic lab=gpio_analog[8]}
C {devices/lab_pin.sym} -130 160 0 0 {name=l3 sig_type=std_logic lab=gpio_analog[7]}
C {devices/lab_pin.sym} -130 180 0 0 {name=l4 sig_type=std_logic lab=gpio_analog[0]}
C {devices/lab_pin.sym} -130 200 0 0 {name=l5 sig_type=std_logic lab=gpio_analog[1]}
C {devices/lab_pin.sym} -130 220 0 0 {name=l6 sig_type=std_logic lab=gpio_analog[2]}
C {devices/lab_pin.sym} -130 240 0 0 {name=l7 sig_type=std_logic lab=gpio_analog[3]}
C {devices/lab_pin.sym} -130 260 0 0 {name=l113 sig_type=std_logic lab=io_analog[0]}
C {devices/lab_pin.sym} -130 280 0 0 {name=l8 sig_type=std_logic lab=io_analog[1]}
C {devices/lab_pin.sym} -130 300 0 0 {name=l9 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_pin.sym} -130 320 0 0 {name=l10 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} -130 -340 0 0 {name=l11 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -130 -320 0 0 {name=l12 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} -130 -300 0 0 {name=l13 sig_type=std_logic lab=vssa2}
C {devices/lab_pin.sym} -130 -80 0 0 {name=l14 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} -130 -60 0 0 {name=l15 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} -130 -40 0 0 {name=l16 sig_type=std_logic lab=io_analog[6]}
C {devices/lab_pin.sym} -130 -20 0 0 {name=l17 sig_type=std_logic lab=io_analog[7]}
C {Final_top_wrapper.sym} 20 -180 0 1 {name=x1}
C {4x4crossbar.sym} 20 200 0 1 {name=x2}
C {devices/lab_pin.sym} -130 -240 0 0 {name=l18 sig_type=std_logic lab=la_data_in[0]}
C {devices/lab_pin.sym} -130 -220 0 0 {name=l19 sig_type=std_logic lab=la_data_in[1]}
C {devices/lab_pin.sym} -130 -200 0 0 {name=l20 sig_type=std_logic lab=la_data_in[2]}
C {devices/lab_pin.sym} -130 -180 0 0 {name=l21 sig_type=std_logic lab=la_data_in[3]}
C {devices/lab_pin.sym} -130 -160 0 0 {name=l22 sig_type=std_logic lab=la_data_in[4]}
C {devices/lab_pin.sym} -130 -140 0 0 {name=l23 sig_type=std_logic lab=la_data_in[5]}
C {devices/lab_pin.sym} -130 -120 0 0 {name=l24 sig_type=std_logic lab=la_data_in[6]}
C {devices/lab_pin.sym} -130 -100 0 0 {name=l25 sig_type=std_logic lab=la_data_in[7]}
C {devices/lab_pin.sym} -130 -280 0 0 {name=l26 sig_type=std_logic lab=la_data_in[8]}
C {devices/lab_pin.sym} -130 -260 0 0 {name=l27 sig_type=std_logic lab=la_data_in[9]}
