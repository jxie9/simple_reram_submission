v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 -250 -110 -250 {
lab=GND}
N -120 -200 -110 -200 {
lab=GND}
N -120 -150 -110 -150 {
lab=GND}
N -120 -270 -110 -270 {
lab=vdda2}
N -120 -220 -110 -220 {
lab=vdda2}
N -120 -170 -110 -170 {
lab=vdda2}
N 190 -270 200 -270 {
lab=v02}
N 190 -220 200 -220 {
lab=v25}
N 190 -170 200 -170 {
lab=v3}
N -320 -190 -320 -170 {
lab=GND}
N -320 -270 -320 -250 {
lab=vccd2}
N -460 -190 -460 -170 {
lab=GND}
N -460 -270 -460 -250 {
lab=vdda2}
N 160 110 270 110 {
lab=WL_IN1}
N 160 90 230 90 {
lab=Out_21_mux}
N 160 30 230 30 {
lab=Out_21_mux}
N 160 300 170 300 {
lab=In_21_mux}
N 160 320 170 320 {
lab=GND}
N 160 200 170 200 {
lab=vccd2}
N 160 240 170 240 {
lab=GND}
N 160 220 220 220 {
lab=In_21_mux}
N 170 300 220 300 {
lab=In_21_mux}
N 160 340 250 340 {
lab=WL_IN1}
N -230 320 -140 320 {
lab=v02}
N -240 300 -140 300 {
lab=Write_Form_Select}
N -230 280 -140 280 {
lab=BL_LA_IN1}
N -810 50 -810 70 {
lab=GND}
N 220 220 220 300 {
lab=In_21_mux}
N 230 30 230 90 {
lab=Out_21_mux}
N -810 -40 -810 -10 {
lab=WL_LA_IN1}
N -810 -120 -810 -100 {
lab=GND}
N -810 -210 -810 -180 {
lab=BL_LA_IN1}
N -550 50 -550 70 {
lab=GND}
N -550 -40 -550 -10 {
lab=Write_Form_Select}
N -810 230 -810 250 {
lab=GND}
N -810 140 -810 170 {
lab=Write_Select}
N 160 280 170 280 {
lab=vccd2}
C {vDivider_3.sym} 40 -160 0 0 {name=x7}
C {vDivider_25.sym} 40 -210 0 0 {name=x8}
C {vDivider_02.sym} 40 -260 0 0 {name=x10}
C {devices/lab_pin.sym} -120 -220 0 0 {name=l33 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -120 -170 0 0 {name=l34 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} 200 -270 2 0 {name=l35 sig_type=std_logic lab=v02}
C {devices/lab_pin.sym} 200 -220 2 0 {name=l37 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} 200 -170 2 0 {name=l38 sig_type=std_logic lab=v3}
C {sky130_fd_pr/corner.sym} -160 -530 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 0 -540 0 0 {name=s1 only_toplevel=false value="
.control
   save all
   tran 0.1n 2u
   write input_periphs_tb.raw
.endc
"
}
C {vsource.sym} -320 -220 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -320 -170 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -320 -270 2 0 {name=l7 sig_type=std_logic lab=vccd2}
C {vsource.sym} -460 -220 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -460 -170 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -460 -270 2 0 {name=l2 sig_type=std_logic lab=vdda2}
C {gnd.sym} -120 -150 0 0 {name=l3 lab=GND}
C {gnd.sym} -120 -200 0 0 {name=l4 lab=GND}
C {gnd.sym} -120 -250 0 0 {name=l5 lab=GND}
C {Buffer.sym} 10 110 0 0 {name=x3}
C {2-1MUX.sym} 10 30 0 0 {name=x9}
C {devices/lab_pin.sym} 270 110 2 0 {name=p25 sig_type=std_logic lab=WL_IN1}
C {devices/lab_pin.sym} -140 10 0 0 {name=p1 sig_type=std_logic lab=Write_Select}
C {devices/lab_pin.sym} -140 90 0 0 {name=p4 sig_type=std_logic lab=WL_LA_IN1}
C {1LineBitInput.sym} 10 310 0 0 {name=x1}
C {2-1MUX.sym} 10 220 0 0 {name=x13}
C {devices/lab_pin.sym} -140 200 0 0 {name=p18 sig_type=std_logic lab=Write_Select}
C {devices/lab_pin.sym} 250 340 2 0 {name=p32 sig_type=std_logic lab=WL_IN1}
C {devices/lab_pin.sym} -230 280 0 0 {name=p38 sig_type=std_logic lab=BL_LA_IN1}
C {devices/lab_pin.sym} -140 30 0 0 {name=l8 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} -140 220 0 0 {name=l9 sig_type=std_logic lab=v25}
C {devices/lab_pin.sym} -140 50 0 0 {name=l10 sig_type=std_logic lab=v3}
C {devices/lab_pin.sym} -140 240 0 0 {name=l11 sig_type=std_logic lab=v3}
C {devices/lab_pin.sym} -230 320 0 0 {name=l12 sig_type=std_logic lab=v02}
C {devices/lab_pin.sym} -240 300 0 0 {name=p2 sig_type=std_logic lab=Write_Form_Select}
C {vsource.sym} -810 20 0 0 {name=V5 value="PWL (0 0 0.9u 0 1u 1.8)" savecurrent=false}
C {gnd.sym} -810 70 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -810 -40 0 0 {name=p3 sig_type=std_logic lab=WL_LA_IN1}
C {vsource.sym} -810 -150 0 0 {name=V3 value="PWL (0 0 0.9u 0 1u 1.8)" savecurrent=false}
C {gnd.sym} -810 -100 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -810 -210 0 0 {name=p5 sig_type=std_logic lab=BL_LA_IN1}
C {vsource.sym} -550 20 0 0 {name=V4 value="PWL (0 0 0.9u 0 1u 1.8)" savecurrent=false}
C {gnd.sym} -550 70 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} -550 -40 0 0 {name=p6 sig_type=std_logic lab=Write_Form_Select}
C {vsource.sym} -810 200 0 0 {name=V6 value="PWL (0 0 0.9u 0 1u 1.8)" savecurrent=false}
C {gnd.sym} -810 250 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -810 140 0 0 {name=p7 sig_type=std_logic lab=Write_Select}
C {devices/lab_pin.sym} 230 60 2 0 {name=p8 sig_type=std_logic lab=Out_21_mux}
C {devices/lab_pin.sym} 220 260 2 0 {name=p9 sig_type=std_logic lab=In_21_mux}
C {gnd.sym} 160 50 0 0 {name=l21 lab=GND}
C {gnd.sym} 160 130 0 0 {name=l22 lab=GND}
C {gnd.sym} 160 240 0 0 {name=l23 lab=GND}
C {gnd.sym} 160 320 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 160 10 2 0 {name=l20 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 170 200 2 0 {name=l17 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 170 280 2 0 {name=l18 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} -120 -270 0 0 {name=l19 sig_type=std_logic lab=vdda2}
