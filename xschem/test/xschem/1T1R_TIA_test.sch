v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -70 0 -60 {
lab=BE_probe}
N 0 -180 0 -160 {
lab=BL}
N -80 -30 -40 -30 {
lab=WL}
N 0 0 0 30 {
lab=#net1}
N 0 -100 0 -70 {
lab=BE_probe}
N -290 120 -290 140 {
lab=GND}
N -200 180 -200 200 {
lab=GND}
N -290 30 -290 60 {
lab=BL}
N -110 240 -110 260 {
lab=GND}
N -110 30 -110 180 {
lab=WL}
N 220 220 220 250 {
lab=GND}
N 620 20 650 20 {
lab=SL1_B1}
N 480 40 650 40 {
lab=V_control}
N 330 40 480 40 {
lab=V_control}
N 890 50 890 70 {
lab=GND}
N 710 -10 890 -10 {
lab=#net2}
N 220 40 330 40 {
lab=V_control}
N 220 40 220 160 {
lab=V_control}
N 630 60 650 60 {
lab=SL1_B2}
N 770 40 780 40 {
lab=#net3}
N -200 30 -200 40 {
lab=SL1_B1}
N -200 100 -200 120 {
lab=SL1_B1}
N -200 40 -200 100 {
lab=SL1_B1}
N 570 60 630 60 {
lab=SL1_B2}
N 570 60 570 90 {
lab=SL1_B2}
N 0 -30 0 -0 {
lab=#net1}
N 810 250 810 280 {
lab=VDD}
N 570 300 730 300 {
lab=SL1_B2}
N 810 190 810 250 {
lab=VDD}
N 700 360 730 360 {
lab=Vinplus}
N 880 330 1040 330 {
lab=Vout}
N 1040 210 1040 330 {
lab=Vout}
N 640 210 840 210 {
lab=SL1_B2}
N 640 210 640 300 {
lab=SL1_B2}
N 700 480 700 510 {
lab=GND}
N 900 210 930 210 {
lab=#net4}
N 990 210 1040 210 {
lab=Vout}
N 1040 390 1040 420 {
lab=GND}
N 700 360 700 420 {
lab=Vinplus}
N 810 380 810 510 {
lab=GND}
N 1130 120 1130 160 {
lab=VDD}
N 1130 220 1130 260 {
lab=GND}
N 570 90 570 300 {
lab=SL1_B2}
C {sky130_fd_pr/reram.sym} 0 -130 0 0 {name=R1 model=sky130_fd_pr_reram__reram_cell spiceprefix=X Tfilament_0=3.8e-9 area_ox=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 -30 0 0 {name=M1
L=0.5
W=7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} 0 90 3 0 {name=p1 sig_type=std_logic lab=SL}
C {lab_pin.sym} -80 -30 0 0 {name=p3 sig_type=std_logic lab=WL}
C {lab_pin.sym} 0 -180 1 0 {name=p4 sig_type=std_logic lab=BL}
C {code_shown.sym} 230 -410 0 0 {name=s1 only_toplevel=false value="
.control
   save all
   tran 0.1n 5u
   write 1T1R_TIA_test.raw
.endc
"}
C {sky130_fd_pr/corner.sym} 80 -380 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -290 90 0 0 {name=V_BL1 value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2.5 2.9u 2.5 3u 0 3.9u 0 4u 0.2)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {gnd.sym} -290 140 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -200 150 0 0 {name=V_SL1 value="PWL (0 0 0.9u 0 1u 2.5 1.9u 2.5 2u 0)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {gnd.sym} -200 200 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -290 30 2 0 {name=p6 sig_type=std_logic lab=BL}
C {lab_pin.sym} -200 30 2 0 {name=p7 sig_type=std_logic lab=SL1_B1}
C {devices/vsource.sym} -110 210 0 0 {name=V5 value="PWL (0 2)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {gnd.sym} -110 260 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -110 30 2 0 {name=p8 sig_type=std_logic lab=WL}
C {ammeter.sym} 810 40 1 0 {name=Vmeas savecurrent=true
}
C {SPDT.sym} 710 40 0 0 {name=x6
}
C {devices/vsource.sym} 220 190 0 0 {name=V_CTRL value="PWL (0 0 3.9u 0 4u 3.3)"

## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {gnd.sym} 220 250 0 0 {name=l12 lab=GND
}
C {lab_pin.sym} 620 20 0 0 {name=p18 sig_type=std_logic lab=SL1_B1
}
C {lab_pin.sym} 840 40 2 0 {name=p22 sig_type=std_logic lab=SL
}
C {devices/vsource.sym} 890 20 0 0 {name=vdd2 value=3.3
}
C {gnd.sym} 890 70 0 0 {name=l13 lab=GND
}
C {lab_pin.sym} 400 40 3 0 {name=p23 sig_type=std_logic lab=V_control
}
C {gnd.sym} 710 90 0 0 {name=l17 lab=GND
}
C {ammeter.sym} 0 60 0 0 {name=Vmeas1 savecurrent=true
}
C {lab_pin.sym} 0 -80 2 0 {name=p2 sig_type=std_logic lab=BE_probe}
C {lab_pin.sym} 570 60 0 0 {name=p5 sig_type=std_logic lab=SL1_B2
}
C {amplifiers/dec24/2stageOpamp.sym} 800 340 0 0 {name=x2}
C {devices/res.sym} 870 210 1 0 {name=R3
value=7.639k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1000 330 1 0 {name=p9 sig_type=std_logic lab=Vout}
C {devices/vsource.sym} 700 450 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} 700 510 0 0 {name=l1 lab=GND}
C {devices/ammeter.sym} 960 210 3 0 {name=Vmeas3 savecurrent=true}
C {devices/lab_pin.sym} 810 190 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 1040 360 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1040 420 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 720 360 1 0 {name=p12 sig_type=std_logic lab=Vinplus}
C {devices/gnd.sym} 810 510 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 1130 190 0 0 {name=V_IN1 value=1.8}
C {lab_pin.sym} 1130 120 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1130 260 0 0 {name=l9 lab=GND}
