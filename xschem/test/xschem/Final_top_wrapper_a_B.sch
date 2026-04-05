v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -680 60 -670 60 {
lab=vssd2_pin}
N -680 110 -670 110 {
lab=vssa2_pin}
N -680 160 -670 160 {
lab=vssa2_pin}
N -680 40 -670 40 {
lab=vccd2_pin}
N -680 90 -670 90 {
lab=vdda2_pin}
N -680 140 -670 140 {
lab=vdda2_pin}
N -370 40 -360 40 {
lab=v02}
N -370 90 -360 90 {
lab=v25}
N -370 140 -360 140 {
lab=v3}
C {4x4crossbar.sym} 150 390 0 1 {name=x2}
C {devices/lab_pin.sym} -370 460 2 0 {name=p25 sig_type=std_logic lab=WL_IN1}
C {devices/lab_pin.sym} -370 480 2 0 {name=p26 sig_type=std_logic lab=WL_IN2}
C {devices/lab_pin.sym} -370 500 2 0 {name=p27 sig_type=std_logic lab=WL_IN3}
C {devices/lab_pin.sym} -370 520 2 0 {name=p28 sig_type=std_logic lab=WL_IN4}
C {devices/lab_pin.sym} 0 370 0 0 {name=p31 sig_type=std_logic lab=WL_IN1}
C {devices/lab_pin.sym} 0 390 0 0 {name=p32 sig_type=std_logic lab=WL_IN2}
C {devices/lab_pin.sym} 0 410 0 0 {name=p35 sig_type=std_logic lab=WL_IN3}
C {devices/lab_pin.sym} 0 430 0 0 {name=p36 sig_type=std_logic lab=WL_IN4}
C {vDivider_3.sym} -520 150 0 0 {name=x7}
C {vDivider_25.sym} -520 100 0 0 {name=x8}
C {vDivider_02.sym} -520 50 0 0 {name=x10}
C {devices/lab_pin.sym} -680 160 0 0 {name=l27 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -680 110 0 0 {name=l28 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -680 60 0 0 {name=l30 sig_type=std_logic lab=vssd2_pin}
C {devices/lab_pin.sym} -680 40 0 0 {name=l31 sig_type=std_logic lab=vccd2_pin}
C {devices/lab_pin.sym} -680 90 0 0 {name=l33 sig_type=std_logic lab=vdda2_pin}
C {devices/lab_pin.sym} -680 140 0 0 {name=l34 sig_type=std_logic lab=vdda2_pin}
C {devices/lab_pin.sym} -360 40 2 0 {name=l35 sig_type=std_logic lab=v02}
C {devices/lab_pin.sym} -360 90 2 0 {name=l37 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} -360 140 2 0 {name=l38 sig_type=std_logic lab=v3}
C {devices/iopin.sym} -860 -70 2 0 {name=p58 lab=vccd2_pin}
C {devices/iopin.sym} -860 -90 2 0 {name=p59 lab=vdda2_pin}
C {devices/iopin.sym} -860 -50 2 0 {name=p60 lab=vssa2_pin}
C {4LineBitInput.sym} -520 310 0 0 {name=x3}
C {4LineWordInput.sym} -520 480 0 0 {name=x4}
C {devices/lab_pin.sym} -370 270 2 0 {name=p14 sig_type=std_logic lab=BL_IN1}
C {devices/lab_pin.sym} -370 290 2 0 {name=p15 sig_type=std_logic lab=BL_IN2}
C {devices/lab_pin.sym} -370 310 2 0 {name=p16 sig_type=std_logic lab=BL_IN3}
C {devices/lab_pin.sym} -370 330 2 0 {name=p17 sig_type=std_logic lab=BL_IN4}
C {devices/lab_pin.sym} -370 230 2 0 {name=l1 sig_type=std_logic lab=vdda2_pin}
C {devices/lab_pin.sym} -370 250 2 0 {name=l2 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -370 420 2 0 {name=l3 sig_type=std_logic lab=vdda2_pin}
C {devices/lab_pin.sym} -370 440 2 0 {name=l4 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -670 440 0 0 {name=l6 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} -670 460 0 0 {name=l5 sig_type=std_logic lab=v25}
C {devices/iopin.sym} -860 10 2 0 {name=p18 lab=Write_select_in}
C {devices/lab_pin.sym} -670 420 0 0 {name=l7 sig_type=std_logic lab=Write_select_in}
C {devices/lab_pin.sym} -670 230 0 0 {name=l8 sig_type=std_logic lab=Write_select_in}
C {devices/lab_pin.sym} -670 270 0 0 {name=l9 sig_type=std_logic lab=v3}
C {devices/lab_pin.sym} -670 310 0 0 {name=l10 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} -670 290 0 0 {name=l11 sig_type=std_logic lab=v02}
C {devices/iopin.sym} -860 30 2 0 {name=p19 lab=Write_form_select_in}
C {devices/lab_pin.sym} -670 250 0 0 {name=l12 sig_type=std_logic lab=Write_form_select_in}
C {iopin.sym} -670 330 0 1 {name=p20 lab=BL_LA_IN1}
C {iopin.sym} -670 350 0 1 {name=p21 lab=BL_LA_IN2}
C {iopin.sym} -670 370 0 1 {name=p22 lab=BL_LA_IN3}
C {iopin.sym} -670 390 0 1 {name=p23 lab=BL_LA_IN4}
C {iopin.sym} -670 480 0 1 {name=p24 lab=WL_LA_IN1}
C {iopin.sym} -670 500 0 1 {name=p29 lab=WL_LA_IN2}
C {iopin.sym} -670 520 0 1 {name=p30 lab=WL_LA_IN3}
C {iopin.sym} -670 540 0 1 {name=p33 lab=WL_LA_IN4}
C {devices/lab_pin.sym} 0 290 2 1 {name=p34 sig_type=std_logic lab=BL_IN1}
C {devices/lab_pin.sym} 0 310 2 1 {name=p37 sig_type=std_logic lab=BL_IN2}
C {devices/lab_pin.sym} 0 330 2 1 {name=p38 sig_type=std_logic lab=BL_IN3}
C {devices/lab_pin.sym} 0 350 2 1 {name=p39 sig_type=std_logic lab=BL_IN4}
C {iopin.sym} 0 470 0 1 {name=p40 lab=SL2_out}
C {iopin.sym} 0 510 0 1 {name=p41 lab=SL4_out}
C {iopin.sym} 0 450 0 1 {name=p42 lab=SL1_out}
C {iopin.sym} 0 490 0 1 {name=p43 lab=SL3_out}
C {devices/lab_pin.sym} 0 270 0 0 {name=l13 sig_type=std_logic lab=vssa2_pin}
C {devices/iopin.sym} -860 -110 2 0 {name=p1 lab=vssd2_pin}
C {4x4crossbar.sym} 150 100 0 1 {name=x1}
C {iopin.sym} 0 160 0 1 {name=p12 lab=SL1_raw}
C {devices/lab_pin.sym} 0 -20 0 0 {name=l14 sig_type=std_logic lab=vssa1_raw}
C {iopin.sym} 0 180 0 1 {name=p2 lab=SL2_raw}
C {iopin.sym} 0 200 0 1 {name=p3 lab=SL3_raw}
C {iopin.sym} 0 220 0 1 {name=p4 lab=SL4_raw}
C {iopin.sym} 0 80 0 1 {name=p5 lab=WL1_raw}
C {iopin.sym} 0 100 0 1 {name=p7 lab=WL2_raw}
C {iopin.sym} 0 120 0 1 {name=p8 lab=WL3_raw}
C {iopin.sym} 0 140 0 1 {name=p9 lab=WL4_raw}
C {iopin.sym} 0 0 0 1 {name=p6 lab=BL1_raw}
C {iopin.sym} 0 20 0 1 {name=p10 lab=BL2_raw}
C {iopin.sym} 0 40 0 1 {name=p11 lab=BL3_raw}
C {iopin.sym} 0 60 0 1 {name=p13 lab=BL4_raw}
C {devices/iopin.sym} -860 -30 2 0 {name=p44 lab=vssa1_raw}
