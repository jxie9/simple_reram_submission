v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -120 210 -120 {
lab=GND}
N 210 -170 210 -120 {
lab=GND}
N 210 -180 210 -170 {
lab=GND}
N 250 260 250 310 {
lab=GND}
N 190 290 190 310 {
lab=GND}
N 340 220 340 310 {
lab=GND}
N 400 190 400 310 {
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
N 160 -20 180 -20 {
lab=#net1}
N 160 0 180 0 {
lab=#net2}
N 190 30 190 230 {
lab=BL1}
N 250 30 250 200 {
lab=BL2}
N 340 30 340 100 {
lab=SL1}
N 400 30 400 70 {
lab=SL2}
N 180 0 230 0 {
lab=#net2}
N 290 0 310 0 {
lab=SL1}
N 290 -20 310 -20 {
lab=SL2}
N 180 -20 230 -20 {
lab=#net1}
N 400 70 400 130 {
lab=SL2}
N 340 100 340 160 {
lab=SL1}
C {gnd.sym} 210 -170 2 0 {name=l1 lab=GND}
C {devices/vsource.sym} 190 260 0 0 {name=V_BL1 value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2.5 2.9u 2.5 3u 0 3.9u 0 4u 0.2)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {devices/vsource.sym} 250 230 0 0 {name=V_BL2 value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2.5 2.9u 2.5 3u 0 3.9u 0 4u 0.2)"

## Line 2 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)

}
C {2x2crossbar.sym} 10 -60 0 0 {name=x1}
C {devices/vsource.sym} 340 190 0 0 {name=V_SL1 value="PWL (0 0 0.9u 0 1u 2 1.9u 2 2u 0)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {devices/vsource.sym} 400 160 0 0 {name=V4 value="PWL (0 0 0.9u 0 1u 2 1.9u 2 2u 0)"

## Line 2 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {devices/vsource.sym} 490 110 0 0 {name=V5 value="PWL (0 2)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {devices/vsource.sym} 550 80 0 0 {name=V6 value="PWL (0 2)"

## Line 2 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {gnd.sym} 190 310 0 0 {name=l2 lab=GND}
C {gnd.sym} 250 310 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 190 30 0 0 {name=p1 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 250 30 0 0 {name=p2 sig_type=std_logic lab=BL2}
C {gnd.sym} 340 310 0 0 {name=l4 lab=GND}
C {gnd.sym} 400 310 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 340 30 0 0 {name=p3 sig_type=std_logic lab=SL1}
C {lab_pin.sym} 400 30 0 0 {name=p4 sig_type=std_logic lab=SL2}
C {gnd.sym} 490 310 0 0 {name=l6 lab=GND}
C {gnd.sym} 550 310 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 490 30 0 0 {name=p5 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 550 30 0 0 {name=p6 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 180 -80 2 0 {name=p7 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 180 -100 2 0 {name=p8 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 310 -20 2 0 {name=p9 sig_type=std_logic lab=SL2}
C {lab_pin.sym} 310 0 2 0 {name=p10 sig_type=std_logic lab=SL1}
C {lab_pin.sym} 180 -40 2 0 {name=p11 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 180 -60 2 0 {name=p12 sig_type=std_logic lab=WL1}
C {sky130_fd_pr/corner.sym} 370 -180 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 520 -170 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 5u
   write periph_4x4crossbar_top.raw
.endc
"}
C {ammeter.sym} 260 0 3 0 {name=Vmeas savecurrent=true}
C {ammeter.sym} 260 -20 3 0 {name=Vmeas2 savecurrent=true}
