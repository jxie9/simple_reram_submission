v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -40 200 -40 {
lab=BL}
N 150 50 200 50 {
lab=BL}
N 150 140 200 140 {
lab=BL}
N 150 230 200 230 {
lab=BL}
N 200 -40 200 330 {
lab=BL}
N 150 20 240 20 {
lab=#net1}
N 150 110 240 110 {
lab=#net1}
N 150 200 240 200 {
lab=#net1}
N 150 290 240 290 {
lab=#net1}
N 240 20 240 330 {
lab=#net1}
N 150 -20 270 -20 {
lab=WL1}
N 150 70 270 70 {
lab=WL2}
N 150 160 270 160 {
lab=WL3}
N 150 250 270 250 {
lab=WL4}
N 150 0 260 -0 {
lab=GND}
N 150 90 260 90 {
lab=GND}
N 150 180 260 180 {
lab=GND}
N 150 270 260 270 {
lab=GND}
N 240 390 240 420 {
lab=#net1}
N 200 330 200 420 {
lab=BL}
N 410 60 410 80 {
lab=GND}
N 410 -30 410 -0 {
lab=WL1}
N 480 100 480 120 {
lab=GND}
N 480 10 480 40 {
lab=WL2}
N 550 140 550 160 {
lab=GND}
N 550 50 550 80 {
lab=WL3}
N 620 180 620 200 {
lab=GND}
N 620 90 620 120 {
lab=WL4}
N 480 -30 480 10 {
lab=WL2}
N 550 -30 550 50 {
lab=WL3}
N 620 -30 620 90 {
lab=WL4}
N 410 300 410 330 {
lab=BL}
N 510 300 510 330 {
lab=SL}
N 410 390 410 410 {
lab=GND}
N 510 390 510 410 {
lab=GND}
N 240 480 240 540 {
lab=SL}
N 240 330 240 390 {
lab=#net1}
C {1T1R.sym} 0 -10 0 0 {name=x1}
C {1T1R.sym} 0 80 0 0 {name=x2}
C {1T1R.sym} 0 170 0 0 {name=x3}
C {1T1R.sym} 0 260 0 0 {name=x4}
C {gnd.sym} 260 0 0 0 {name=l1 lab=GND}
C {gnd.sym} 260 90 0 0 {name=l2 lab=GND}
C {gnd.sym} 260 180 0 0 {name=l3 lab=GND}
C {gnd.sym} 260 270 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 270 -20 2 0 {name=p1 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 270 70 2 0 {name=p2 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 270 160 2 0 {name=p3 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 270 250 2 0 {name=p4 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 200 420 3 0 {name=p5 sig_type=std_logic lab=BL}
C {lab_pin.sym} 240 540 3 0 {name=p6 sig_type=std_logic lab=SL}
C {sky130_fd_pr/corner.sym} -140 -210 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 10 -200 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.01n 15u
   write 4T4R_Test.raw
.endc
"}
C {devices/vsource.sym} 410 30 0 0 {name=V_WL1 value="PWL (0 2)"

### For WL1
## LOCAL  ou -> ON 
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {gnd.sym} 410 80 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 410 -30 2 0 {name=p7 sig_type=std_logic lab=WL1}
C {devices/vsource.sym} 480 70 0 0 {name=V_WL2 value="PWL (0 2 4.9u 2 5u 0 5.9u 0 6u 2)"

### For WL2
## LOCAL  0u (ON) -> 5u (OFF) -> 6u (ON) 
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {gnd.sym} 480 120 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 480 -30 2 0 {name=p8 sig_type=std_logic lab=WL2}
C {devices/vsource.sym} 550 110 0 0 {name=V_WL3 value="PWL (0 2 4.9u 2 5u 0 5.9u 0 6u 2 6.9u 2 7u 0 7.9u 0 8u 2)"

### For WL3
## LOCAL  0u (ON) -> 5u (OFF) -> 6u (ON) -> 7u (OFF) -> 8u (ON)
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {gnd.sym} 550 160 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 550 -30 2 0 {name=p9 sig_type=std_logic lab=WL3}
C {devices/vsource.sym} 620 150 0 0 {name=V_WL4 value="PWL (0 2 4.9u 2 5u 0 5.9u 0 6u 2 6.9u 2 7u 0 7.9u 0 8u 2 8.9u 2 9u 0 9.9u 0 10u 2)"

### For WL3
## LOCAL  0u (ON) -> 5u (OFF) -> 6u (ON) -> 7u (OFF) -> 8u (ON) -> 9u (OFF) -> 10u (ON)
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {gnd.sym} 620 200 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 620 -30 2 0 {name=p10 sig_type=std_logic lab=WL4}
C {devices/vsource.sym} 510 360 0 0 {name=V_SL value="PWL (0 0 0.9u 0 1u 2.5 1.9u 2.5 2u 0 2.9u 0 3u 2.5 3.9u 2.5 4u 0)"

### For SL
## LOCAL  0u (IDLE) -> 1u (RESET)-> 2u (IDLE) -> 3u (RESET) -> 4u (IDLE)
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {devices/vsource.sym} 410 360 0 0 {name=V_BL value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2 2.9u 2 3u 0 3.9u 0 4u 0.2 4.9u 0.2 5u 2 5.9u 2 6u 0.2 6.9u 0.2 7u 2 7.9u 2 8u 0.2 8.9u 0.2 9u 2 9.9u 2 10u 0.2 10.9u 0.2 11u 2 11.9u 2 12u 0.2)"

### For BL
## LOCAL  0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (RESET) -> 4u (READ) -> 5u (SET) -> 6u (READ) -> 7u (SET) -> 8u (READ) -> 9u (SET) -> 10u (READ) -> 11u (SET) -> 12u (READ)
## GLOBAL 0u (FORM ALL) -> 1u (RESET ALL) -> 2u (SET ALL) -> 3u (RESET ALL) -> 4u (READ) 
##                      -> 5u (SET WL1)   -> 6u (READ)    -> 7u (SET WL2)   -> 8u (READ) 
##                      -> 9u (SET WL3)   -> 10u (READ)   -> 11u (SET WL4)  -> 12u (READ)
}
C {lab_pin.sym} 510 300 2 0 {name=p11 sig_type=std_logic lab=SL}
C {lab_pin.sym} 410 300 2 0 {name=p12 sig_type=std_logic lab=BL}
C {gnd.sym} 510 410 0 0 {name=l9 lab=GND}
C {gnd.sym} 410 410 0 0 {name=l10 lab=GND}
C {res.sym} 240 450 2 0 {name=R2
value=300
footprint=1206
device=resistor
m=1}
