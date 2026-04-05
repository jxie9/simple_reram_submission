v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -230 -240 -230 {
lab=vssa2_pin}
N -250 -180 -240 -180 {
lab=vssa2_pin}
N -250 -130 -240 -130 {
lab=vssa2_pin}
N -250 -250 -240 -250 {
lab=vdda2_pin}
N -250 -200 -240 -200 {
lab=vdda2_pin}
N -250 -150 -240 -150 {
lab=vdda2_pin}
N 60 -250 70 -250 {
lab=v02}
N 60 -200 70 -200 {
lab=v25}
N 60 -150 70 -150 {
lab=v3}
C {4x4crossbar.sym} 580 100 0 1 {name=x2}
C {devices/lab_pin.sym} 60 170 2 0 {name=p25 sig_type=std_logic lab=WL_IN1}
C {devices/lab_pin.sym} 60 190 2 0 {name=p26 sig_type=std_logic lab=WL_IN2}
C {devices/lab_pin.sym} 60 210 2 0 {name=p27 sig_type=std_logic lab=WL_IN3}
C {devices/lab_pin.sym} 60 230 2 0 {name=p28 sig_type=std_logic lab=WL_IN4}
C {devices/lab_pin.sym} 430 80 0 0 {name=p31 sig_type=std_logic lab=WL_IN1}
C {devices/lab_pin.sym} 430 100 0 0 {name=p32 sig_type=std_logic lab=WL_IN2}
C {devices/lab_pin.sym} 430 120 0 0 {name=p35 sig_type=std_logic lab=WL_IN3}
C {devices/lab_pin.sym} 430 140 0 0 {name=p36 sig_type=std_logic lab=WL_IN4}
C {vDivider_3.sym} -90 -140 0 0 {name=x7}
C {vDivider_25.sym} -90 -190 0 0 {name=x8}
C {vDivider_02.sym} -90 -240 0 0 {name=x10}
C {devices/lab_pin.sym} -250 -130 0 0 {name=l27 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -250 -180 0 0 {name=l28 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -250 -200 0 0 {name=l33 sig_type=std_logic lab=vdda2_pin}
C {devices/lab_pin.sym} -250 -150 0 0 {name=l34 sig_type=std_logic lab=vdda2_pin}
C {devices/lab_pin.sym} 70 -250 2 0 {name=l35 sig_type=std_logic lab=v02}
C {devices/lab_pin.sym} 70 -200 2 0 {name=l37 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} 70 -150 2 0 {name=l38 sig_type=std_logic lab=v3}
C {devices/iopin.sym} -430 -360 2 0 {name=p59 lab=vdda2_pin}
C {devices/iopin.sym} -430 -340 2 0 {name=p60 lab=vssa2_pin}
C {4LineBitInput.sym} -90 20 0 0 {name=x3}
C {4LineWordInput.sym} -90 190 0 0 {name=x4}
C {devices/lab_pin.sym} 60 -20 2 0 {name=p14 sig_type=std_logic lab=BL_IN1}
C {devices/lab_pin.sym} 60 0 2 0 {name=p15 sig_type=std_logic lab=BL_IN2}
C {devices/lab_pin.sym} 60 20 2 0 {name=p16 sig_type=std_logic lab=BL_IN3}
C {devices/lab_pin.sym} 60 40 2 0 {name=p17 sig_type=std_logic lab=BL_IN4}
C {devices/lab_pin.sym} 60 -60 2 0 {name=l1 sig_type=std_logic lab=vdda2_pin}
C {devices/lab_pin.sym} 60 -40 2 0 {name=l2 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} 60 130 2 0 {name=l3 sig_type=std_logic lab=vdda2_pin}
C {devices/lab_pin.sym} 60 150 2 0 {name=l4 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -240 150 0 0 {name=l6 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} -240 170 0 0 {name=l5 sig_type=std_logic lab=v25}
C {devices/iopin.sym} -430 -280 2 0 {name=p18 lab=Write_select_in}
C {devices/lab_pin.sym} -240 130 0 0 {name=l7 sig_type=std_logic lab=Write_select_in}
C {devices/lab_pin.sym} -240 -60 0 0 {name=l8 sig_type=std_logic lab=Write_select_in}
C {devices/lab_pin.sym} -240 -20 0 0 {name=l9 sig_type=std_logic lab=v3}
C {devices/lab_pin.sym} -240 20 0 0 {name=l10 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} -240 0 0 0 {name=l11 sig_type=std_logic lab=v02}
C {devices/iopin.sym} -430 -260 2 0 {name=p19 lab=Write_form_select_in}
C {devices/lab_pin.sym} -240 -40 0 0 {name=l12 sig_type=std_logic lab=Write_form_select_in}
C {iopin.sym} -240 40 0 1 {name=p20 lab=BL_LA_IN1}
C {iopin.sym} -240 60 0 1 {name=p21 lab=BL_LA_IN2}
C {iopin.sym} -240 80 0 1 {name=p22 lab=BL_LA_IN3}
C {iopin.sym} -240 100 0 1 {name=p23 lab=BL_LA_IN4}
C {iopin.sym} -240 190 0 1 {name=p24 lab=WL_LA_IN1}
C {iopin.sym} -240 210 0 1 {name=p29 lab=WL_LA_IN2}
C {iopin.sym} -240 230 0 1 {name=p30 lab=WL_LA_IN3}
C {iopin.sym} -240 250 0 1 {name=p33 lab=WL_LA_IN4}
C {devices/lab_pin.sym} 430 0 2 1 {name=p34 sig_type=std_logic lab=BL_IN1}
C {devices/lab_pin.sym} 430 20 2 1 {name=p37 sig_type=std_logic lab=BL_IN2}
C {devices/lab_pin.sym} 430 40 2 1 {name=p38 sig_type=std_logic lab=BL_IN3}
C {devices/lab_pin.sym} 430 60 2 1 {name=p39 sig_type=std_logic lab=BL_IN4}
C {iopin.sym} 430 180 0 1 {name=p40 lab=SL2_out}
C {iopin.sym} 430 220 0 1 {name=p41 lab=SL4_out}
C {iopin.sym} 430 160 0 1 {name=p42 lab=SL1_out}
C {iopin.sym} 430 200 0 1 {name=p43 lab=SL3_out}
C {devices/lab_pin.sym} 430 -20 0 0 {name=l13 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -250 -230 0 0 {name=l14 sig_type=std_logic lab=vssa2_pin}
C {devices/lab_pin.sym} -250 -250 0 0 {name=l15 sig_type=std_logic lab=vdda2_pin}
