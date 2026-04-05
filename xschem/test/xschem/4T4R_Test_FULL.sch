v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -540 -30 -540 {
lab=BL}
N -80 -450 -30 -450 {
lab=BL}
N -80 -360 -30 -360 {
lab=BL}
N -80 -270 -30 -270 {
lab=BL}
N -30 -540 -30 -170 {
lab=BL}
N -80 -480 10 -480 {
lab=SL_probe}
N -80 -390 10 -390 {
lab=SL_probe}
N -80 -300 10 -300 {
lab=SL_probe}
N -80 -210 10 -210 {
lab=SL_probe}
N 10 -480 10 -170 {
lab=SL_probe}
N -80 -520 40 -520 {
lab=WL1}
N -80 -430 40 -430 {
lab=WL2}
N -80 -340 40 -340 {
lab=WL3}
N -80 -250 40 -250 {
lab=WL4}
N -80 -500 30 -500 {
lab=GND}
N -80 -410 30 -410 {
lab=GND}
N -80 -320 30 -320 {
lab=GND}
N -80 -230 30 -230 {
lab=GND}
N 180 -440 180 -420 {
lab=GND}
N 180 -530 180 -500 {
lab=WL1}
N 250 -400 250 -380 {
lab=GND}
N 250 -490 250 -460 {
lab=WL2}
N 320 -360 320 -340 {
lab=GND}
N 320 -450 320 -420 {
lab=WL3}
N 390 -320 390 -300 {
lab=GND}
N 390 -410 390 -380 {
lab=WL4}
N 250 -530 250 -490 {
lab=WL2}
N 320 -530 320 -450 {
lab=WL3}
N 390 -530 390 -410 {
lab=WL4}
N 540 -230 540 -200 {
lab=BL}
N 640 -230 640 -200 {
lab=SL}
N 540 -140 540 -120 {
lab=GND}
N 640 -140 640 -120 {
lab=GND}
N -30 -170 -30 -140 {
lab=BL}
N 460 -60 580 -60 {
lab=Vout}
N 280 -30 290 -40 {
lab=SL}
N 530 30 530 60 {
lab=GND}
N 530 -60 530 -30 {
lab=Vout}
N 10 -90 80 -90 {
lab=probe_n}
N 140 -90 290 -90 {
lab=probe_n}
N 10 -30 80 -30 {
lab=SL}
N 140 -30 280 -30 {
lab=SL}
N 230 -200 230 -90 {
lab=probe_n}
N 230 -200 320 -200 {
lab=probe_n}
N 380 -200 490 -200 {
lab=Vout}
N 490 -200 490 -60 {
lab=Vout}
N 10 -30 10 50 {
lab=SL}
N 490 -530 490 -500 {
lab=VDD}
N 490 -440 490 -420 {
lab=GND}
N 10 -170 10 -150 {
lab=SL_probe}
N 80 -90 140 -90 {
lab=probe_n}
N 80 -30 140 -30 {
lab=SL}
C {1T1R.sym} -230 -510 0 0 {name=x1}
C {1T1R.sym} -230 -420 0 0 {name=x2}
C {1T1R.sym} -230 -330 0 0 {name=x3}
C {1T1R.sym} -230 -240 0 0 {name=x4}
C {gnd.sym} 30 -500 0 0 {name=l1 lab=GND}
C {gnd.sym} 30 -410 0 0 {name=l2 lab=GND}
C {gnd.sym} 30 -320 0 0 {name=l3 lab=GND}
C {gnd.sym} 30 -230 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 40 -520 2 0 {name=p1 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 40 -430 2 0 {name=p2 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 40 -340 2 0 {name=p3 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 40 -250 2 0 {name=p4 sig_type=std_logic lab=WL4}
C {lab_pin.sym} -30 -140 3 0 {name=p5 sig_type=std_logic lab=BL}
C {lab_pin.sym} 10 50 3 0 {name=p6 sig_type=std_logic lab=SL}
C {sky130_fd_pr/corner.sym} -370 -710 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -210 -700 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 15u
   write 4T4R_Test_FULL.raw
.endc
"}
C {devices/vsource.sym} 180 -470 0 0 {name=V_WL1 value="PWL (0 2)"

### For WL1
## LOCAL  ou -> ON 
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {gnd.sym} 180 -420 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 180 -530 2 0 {name=p7 sig_type=std_logic lab=WL1}
C {devices/vsource.sym} 250 -430 0 0 {name=V_WL2 value="PWL (0 2 4.9u 2 5u 0 5.9u 0 6u 2)"

### For WL2
## LOCAL  0u (ON) -> 5u (OFF) -> 6u (ON) 
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {gnd.sym} 250 -380 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 250 -530 2 0 {name=p8 sig_type=std_logic lab=WL2}
C {devices/vsource.sym} 320 -390 0 0 {name=V_WL3 value="PWL (0 2 4.9u 2 5u 0 5.9u 0 6u 2 6.9u 2 7u 0 7.9u 0 8u 2)"

### For WL3
## LOCAL  0u (ON) -> 5u (OFF) -> 6u (ON) -> 7u (OFF) -> 8u (ON)
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {gnd.sym} 320 -340 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 320 -530 2 0 {name=p9 sig_type=std_logic lab=WL3}
C {devices/vsource.sym} 390 -350 0 0 {name=V_WL4 value="PWL (0 2 4.9u 2 5u 0 5.9u 0 6u 2 6.9u 2 7u 0 7.9u 0 8u 2 8.9u 2 9u 0 9.9u 0 10u 2)"

### For WL3
## LOCAL  0u (ON) -> 5u (OFF) -> 6u (ON) -> 7u (OFF) -> 8u (ON) -> 9u (OFF) -> 10u (ON)
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {gnd.sym} 390 -300 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 390 -530 2 0 {name=p10 sig_type=std_logic lab=WL4}
C {devices/vsource.sym} 640 -170 0 0 {name=V_SL value="PWL (0 0 0.9u 0 1u 2.5 1.9u 2.5 2u 0 2.9u 0 3u 2.5 3.9u 2.5 4u 0)"

### For SL
## LOCAL  0u (IDLE) -> 1u (RESET)-> 2u (IDLE) -> 3u (RESET) -> 4u (IDLE)
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {devices/vsource.sym} 540 -170 0 0 {name=V_BL value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2 2.9u 2 3u 0 3.9u 0 4u 0.2 4.9u 0.2 5u 2 5.9u 2 6u 0.2 6.9u 0.2 7u 2 7.9u 2 8u 0.2 8.9u 0.2 9u 2 9.9u 2 10u 0.2 10.9u 0.2 11u 2 11.9u 2 12u 0.2)"

##"PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2 2.9u 2 3u 0 3.9u 0 4u 0.2 4.9u 0.2 5u 2 5.9u 2 6u 0.2 6.9u 0.2 7u 2 7.9u 2 8u 0.2 8.9u 0.2 9u 2 9.9u 2 10u 0.2 10.9u 0.2 11u 2 11.9u 2 12u 0.2)"
##"PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2 2.9u 2 3u 0 3.9u 0 4u 1.4 4.9u 1.4 5u 2 5.9u 2 6u 1.4 6.9u 1.4 7u 2 7.9u 2 8u 1.4 8.9u 1.4 9u 2 9.9u 2 10u 1.4 10.9u 1.4 11u 2 11.9u 2 12u 1.4)"
### For BL
## LOCAL  0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (RESET) -> 4u (READ) -> 5u (SET) -> 6u (READ) -> 7u (SET) -> 8u (READ) -> 9u (SET) -> 10u (READ) -> 11u (SET) -> 12u (READ)
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {lab_pin.sym} 640 -230 2 0 {name=p11 sig_type=std_logic lab=SL
}
C {lab_pin.sym} 540 -230 2 0 {name=p12 sig_type=std_logic lab=BL}
C {gnd.sym} 640 -120 0 0 {name=l9 lab=GND}
C {gnd.sym} 540 -120 0 0 {name=l10 lab=GND}
C {amplifiers/dec24/5TwithBuffer.sym} 360 -70 0 0 {name=x5}
C {devices/lab_pin.sym} 580 -60 2 0 {name=p14 sig_type=std_logic lab=Vout
}
C {res.sym} 10 -60 2 0 {name=R2
value=300
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 530 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 530 60 0 0 {name=l11 lab=GND}
C {res.sym} 350 -200 3 0 {name=R5
value=1.5k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 370 0 0 0 {name=l12 lab=GND
}
C {devices/lab_pin.sym} 180 -90 1 0 {name=p15 sig_type=std_logic lab=probe_n
}
C {lab_pin.sym} 10 -170 2 0 {name=p16 sig_type=std_logic lab=SL_probe}
C {devices/vsource.sym} 490 -470 0 0 {name=V_vdd value=1.8}
C {lab_pin.sym} 490 -530 2 0 {name=p13 sig_type=std_logic lab=VDD

}
C {gnd.sym} 490 -420 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 370 -120 2 0 {name=p17 sig_type=std_logic lab=VDD

}
C {ammeter.sym} 10 -120 0 0 {name=Vmeas savecurrent=true}
