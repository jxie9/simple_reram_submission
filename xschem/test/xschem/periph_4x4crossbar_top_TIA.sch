v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -120 210 -120 {
lab=GND}
N 210 -180 210 -120 {
lab=GND}
N 250 260 250 310 {
lab=GND}
N 190 290 190 310 {
lab=GND}
N 490 140 490 310 {
lab=GND}
N 550 110 550 310 {
lab=GND}
N 490 30 490 80 {
lab=WL1}
N 550 30 550 50 {
lab=WL2}
N 160 -100 180 -100 {
lab=BL2}
N 160 -80 180 -80 {
lab=BL1}
N 160 -60 180 -60 {
lab=WL1}
N 160 -40 180 -40 {
lab=WL2}
N 160 -20 250 -20 {
lab=SL2}
N 160 0 250 0 {
lab=SL1}
N 190 30 190 230 {
lab=BL1}
N 250 30 250 200 {
lab=BL2}
N 1000 160 1040 160 {
lab=#net1}
N 910 260 910 270 {
lab=#net2}
N 910 330 910 350 {
lab=GND}
N 1120 240 1120 260 {
lab=GND}
N 1120 60 1120 140 {
lab=#net3}
N 1120 60 1210 60 {
lab=#net3}
N 1210 120 1210 140 {
lab=GND}
N 1270 190 1330 190 {
lab=Vout_1}
N 1290 250 1290 260 {
lab=GND}
N 1000 10 1000 160 {
lab=#net1}
N 1270 10 1270 190 {
lab=Vout_1}
N 1000 10 1120 10 {
lab=#net1}
N 1180 10 1270 10 {
lab=Vout_1}
N 900 650 900 660 {
lab=#net4}
N 900 720 900 740 {
lab=GND}
N 1110 630 1110 650 {
lab=GND}
N 1110 450 1110 530 {
lab=#net5}
N 1110 450 1200 450 {
lab=#net5}
N 1200 510 1200 530 {
lab=GND}
N 1260 580 1320 580 {
lab=Vout_2}
N 1280 640 1280 650 {
lab=GND}
N 990 400 990 550 {
lab=#net6}
N 1260 400 1260 580 {
lab=Vout_2}
N 990 400 1110 400 {
lab=#net6}
N 1170 400 1260 400 {
lab=Vout_2}
N 990 550 1030 550 {
lab=#net6}
N 250 -20 270 -20 {
lab=SL2}
N 250 0 270 0 {
lab=SL1}
N 320 440 320 470 {
lab=GND}
N 900 610 1030 610 {
lab=#net4}
N 400 440 400 470 {
lab=GND}
N 910 220 1040 220 {
lab=#net2}
N 320 360 320 380 {
lab=SL1_B1}
N 400 360 400 380 {
lab=SL2_B1}
N 0 820 0 850 {
lab=GND}
N 400 550 430 550 {
lab=SL1_B1}
N 400 590 430 590 {
lab=SL1_B2}
N 400 690 430 690 {
lab=SL2_B1}
N 400 730 430 730 {
lab=SL2_B2}
N 260 570 430 570 {
lab=V_control}
N 550 570 610 570 {
lab=SL1}
N 550 710 610 710 {
lab=SL2}
N 110 570 260 570 {
lab=V_control}
N 670 580 670 600 {
lab=GND}
N 490 520 670 520 {
lab=#net7}
N 670 720 670 740 {
lab=GND}
N 490 660 670 660 {
lab=#net8}
N 1190 190 1270 190 {
lab=Vout_1}
N 1180 580 1260 580 {
lab=Vout_2}
N 900 610 900 650 {
lab=#net4}
N 910 220 910 260 {
lab=#net2}
N 110 710 430 710 {
lab=V_control}
N 110 570 110 710 {
lab=V_control}
N -0 640 110 640 {
lab=V_control}
N -0 640 -0 760 {
lab=V_control}
N 820 160 860 160 {
lab=SL1_B2}
N 920 160 1000 160 {
lab=#net1}
N 820 550 860 550 {
lab=SL2_B2}
N 920 550 990 550 {
lab=#net6}
C {gnd.sym} 210 -170 2 0 {name=l1 lab=GND}
C {devices/vsource.sym} 190 260 0 0 {name=V_BL1 value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2 2.9u 2 3u 0 6.9u 0 7u 0.2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR BL1
## LOCAL:  (0u) FORM -> 1u (RESET) -> 2u (SET) -> 3u (OFF) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ
}
C {devices/vsource.sym} 250 230 0 0 {name=V_BL2 value="PWL (0 0 2.9u 0 3u 3 3.9u 3 4u 0 4.9u 0 5u 2 5.9u 2 6u 0 6.9u 0 7u 0.2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR BL2
## LOCAL:  OFF	-> (3u) FORM -> 4u (RESET) -> 5u (SET) -> 6u (RESET) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ

}
C {2x2crossbar.sym} 10 -60 0 0 {name=x1}
C {devices/vsource.sym} 320 410 0 0 {name=V_SL1 value="PWL (0 0 0.9u 0 1u 2.5 1.9u 2 2.5u 0)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR SL1
## LOCAL:  (0u) FORM -> 1u (RESET) -> 2u (SET) -> 3u (OFF) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ}
C {devices/vsource.sym} 400 410 0 0 {name=V_SL2 value="PWL (0 0 3.9u 0 4u 2.5 4.9u 2.5 5u 0 5.9u 0 6u 2.5 6.9u 2.5 7u 0)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR SL2
## LOCAL:  OFF	-> (3u) FORM -> 4u (RESET) -> 5u (SET) -> 6u (RESET) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ}
C {devices/vsource.sym} 490 110 0 0 {name=V_WL1 value="PWL (0 2 2.9u 2 3u 0 6.9u 0 7u 2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR WL1
## LOCAL:  (0u -> 2u) ON     --> (3u -> 6u) OFF    --> (7u -> 8u) ON
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET Rw --> (7u -> 8u) READ}
C {devices/vsource.sym} 550 80 0 0 {name=V_WL2 value="PWL (0 0 2.9u 0 3u 2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR WL2
## LOCAL:  (0u -> 2u) OFF    --> (3u -> 6u) ON     --> (7u -> 8u) ON
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ
}
C {gnd.sym} 190 310 0 0 {name=l2 lab=GND}
C {gnd.sym} 250 310 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 190 30 0 0 {name=p1 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 250 30 0 0 {name=p2 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 820 160 0 0 {name=p3 sig_type=std_logic lab=SL1_B2}
C {lab_pin.sym} 820 550 0 0 {name=p4 sig_type=std_logic lab=SL2_B2}
C {gnd.sym} 490 310 0 0 {name=l6 lab=GND}
C {gnd.sym} 550 310 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 490 30 0 0 {name=p5 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 550 30 0 0 {name=p6 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 180 -80 2 0 {name=p7 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 180 -100 2 0 {name=p8 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 270 -20 2 0 {name=p9 sig_type=std_logic lab=SL2}
C {lab_pin.sym} 180 -40 2 0 {name=p11 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 180 -60 2 0 {name=p12 sig_type=std_logic lab=WL1}
C {sky130_fd_pr/corner.sym} 370 -180 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 520 -170 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.01n 10u
   write periph_4x4crossbar_top_TIA.raw
.endc
"}
C {amplifiers/dec24/2stageOpamp.sym} 1110 200 0 0 {name=x2}
C {devices/vsource.sym} 910 300 0 0 {name=vcm value=1.2

}
C {gnd.sym} 320 470 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 1210 90 0 0 {name=vdd value=1.8}
C {gnd.sym} 1210 140 0 0 {name=l10 lab=GND}
C {capa.sym} 1290 220 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1290 260 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1330 190 2 0 {name=p14 sig_type=std_logic lab=Vout_1}
C {res.sym} 1150 10 1 0 {name=R2
value=7.639k
footprint=1206
device=resistor
m=1}
C {amplifiers/dec24/2stageOpamp.sym} 1100 590 0 0 {name=x3}
C {devices/vsource.sym} 900 690 0 0 {name=vcm1 value=1.2

}
C {gnd.sym} 400 470 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 1200 480 0 0 {name=vdd1 value=1.8}
C {gnd.sym} 1200 530 0 0 {name=l14 lab=GND}
C {capa.sym} 1280 610 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1280 650 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 1320 580 2 0 {name=p16 sig_type=std_logic lab=Vout_2}
C {res.sym} 1140 400 1 0 {name=R1
value=7.639k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 270 0 2 0 {name=p17 sig_type=std_logic lab=SL1}
C {gnd.sym} 910 350 0 0 {name=l4 lab=GND}
C {gnd.sym} 900 740 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 400 360 2 0 {name=p10 sig_type=std_logic lab=SL2_B1}
C {lab_pin.sym} 320 360 2 0 {name=p13 sig_type=std_logic lab=SL1_B1}
C {SPDT.sym} 490 570 0 0 {name=x4}
C {SPDT.sym} 490 710 0 0 {name=x5}
C {devices/vsource.sym} 0 790 0 0 {name=V_CTRL value="PWL (0 0 6.9u 0 7u 3.3)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR CONTROL
## LOCAL:  0u (GND) -> 7u (TIA)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ}
C {gnd.sym} 0 850 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 400 730 0 0 {name=p15 sig_type=std_logic lab=SL2_B2}
C {lab_pin.sym} 400 550 0 0 {name=p18 sig_type=std_logic lab=SL1_B1}
C {lab_pin.sym} 400 690 0 0 {name=p19 sig_type=std_logic lab=SL2_B1}
C {lab_pin.sym} 400 590 0 0 {name=p20 sig_type=std_logic lab=SL1_B2}
C {lab_pin.sym} 610 710 2 0 {name=p21 sig_type=std_logic lab=SL2}
C {lab_pin.sym} 610 570 2 0 {name=p22 sig_type=std_logic lab=SL1}
C {devices/vsource.sym} 670 550 0 0 {name=vdd2 value=3.3}
C {gnd.sym} 670 600 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 670 690 0 0 {name=vdd3 value=3.3}
C {gnd.sym} 670 740 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 110 610 2 0 {name=p23 sig_type=std_logic lab=V_control}
C {gnd.sym} 490 620 0 0 {name=l17 lab=GND}
C {gnd.sym} 490 760 0 0 {name=l18 lab=GND}
C {ammeter.sym} 890 160 3 0 {name=Vmeas savecurrent=true}
C {ammeter.sym} 890 550 3 0 {name=Vmeas1 savecurrent=true}
C {gnd.sym} 1110 650 0 0 {name=l19 lab=GND}
C {gnd.sym} 1120 260 0 0 {name=l20 lab=GND}
