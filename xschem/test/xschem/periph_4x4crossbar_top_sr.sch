v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -60 -20 -60 {
lab=GND}
N -20 -110 -20 -60 {
lab=GND}
N -20 -120 -20 -110 {
lab=GND}
N 20 320 20 370 {
lab=GND}
N -40 350 -40 370 {
lab=GND}
N 260 200 260 370 {
lab=GND}
N 320 170 320 370 {
lab=GND}
N 260 90 260 140 {
lab=WL1}
N 320 90 320 110 {
lab=WL2}
N -70 -40 -50 -40 {
lab=BL2}
N -70 -20 -50 -20 {
lab=BL1}
N -70 0 -50 0 {
lab=WL1}
N -70 20 -50 20 {
lab=WL2}
N -70 40 -50 40 {
lab=#net1}
N -70 60 -50 60 {
lab=#net2}
N -40 90 -40 290 {
lab=BL1}
N 20 90 20 260 {
lab=BL2}
N -50 40 20 40 {
lab=#net1}
N -50 60 20 60 {
lab=#net2}
N 80 40 100 40 {
lab=SL2}
N 80 60 100 60 {
lab=SL1}
N 90 280 90 370 {
lab=GND}
N 160 250 160 370 {
lab=GND}
N 90 90 90 160 {
lab=SL1}
N 160 90 160 130 {
lab=SL2}
N 90 160 90 220 {
lab=SL1}
N 160 130 160 190 {
lab=SL2}
C {gnd.sym} -20 -110 2 0 {name=l1 lab=GND}
C {devices/vsource.sym} -40 320 0 0 {name=V_BL1 value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2 2.9u 2 3u 0 6.9u 0 7u 0.2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR BL1
## LOCAL:  (0u) FORM -> 1u (RESET) -> 2u (SET) -> 3u (OFF) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ
}
C {devices/vsource.sym} 20 290 0 0 {name=V_BL2 value="PWL (0 0 2.9u 0 3u 3 3.9u 3 4u 0 4.9u 0 5u 2 5.9u 2 6u 0 6.9u 0 7u 0.2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR BL2
## LOCAL:  OFF	-> (3u) FORM -> 4u (RESET) -> 5u (SET) -> 6u (RESET) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ

}
C {2x2crossbar.sym} -220 0 0 0 {name=x1}
C {devices/vsource.sym} 260 170 0 0 {name=V_WL1 value="PWL (0 2 2.9u 2 3u 0 6.9u 0 7u 2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR WL1
## LOCAL:  (0u -> 2u) ON     --> (3u -> 6u) OFF    --> (7u -> 8u) ON
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET Rw --> (7u -> 8u) READ}
C {devices/vsource.sym} 320 140 0 0 {name=V_WL2 value="PWL (0 0 2.9u 0 3u 2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR WL2
## LOCAL:  (0u -> 2u) OFF    --> (3u -> 6u) ON     --> (7u -> 8u) ON
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ
}
C {gnd.sym} -40 370 0 0 {name=l2 lab=GND}
C {gnd.sym} 20 370 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -40 90 0 0 {name=p1 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 20 90 0 0 {name=p2 sig_type=std_logic lab=BL2}
C {gnd.sym} 260 370 0 0 {name=l6 lab=GND}
C {gnd.sym} 320 370 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 260 90 0 0 {name=p5 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 320 90 0 0 {name=p6 sig_type=std_logic lab=WL2}
C {lab_pin.sym} -50 -20 2 0 {name=p7 sig_type=std_logic lab=BL1}
C {lab_pin.sym} -50 -40 2 0 {name=p8 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 100 40 2 0 {name=p9 sig_type=std_logic lab=SL2}
C {lab_pin.sym} -50 20 2 0 {name=p11 sig_type=std_logic lab=WL2}
C {lab_pin.sym} -50 0 2 0 {name=p12 sig_type=std_logic lab=WL1}
C {sky130_fd_pr/corner.sym} 140 -120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 290 -110 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 10u
   write periph_4x4crossbar_top_sr.raw
.endc
"}
C {ammeter.sym} 50 40 3 0 {name=Vmeas1 savecurrent=true}
C {ammeter.sym} 50 60 3 0 {name=Vmeas savecurrent=true}
C {lab_pin.sym} 100 60 2 0 {name=p17 sig_type=std_logic lab=SL1}
C {devices/vsource.sym} 90 250 0 0 {name=V_SL1 value="PWL (0 0 0.9u 0 1u 2 1.9u 2 2u 0)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR SL1
## LOCAL:  (0u) FORM -> 1u (RESET) -> 2u (SET) -> 3u (OFF) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ}
C {devices/vsource.sym} 160 220 0 0 {name=V_SL2 value="PWL (0 0 3.9u 0 4u 2 4.9u 2 5u 0 5.9u 0 6u 2 6.9u 2 7u 0)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR SL2
## LOCAL:  OFF	-> (3u) FORM -> 4u (RESET) -> 5u (SET) -> 6u (RESET) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ}
C {gnd.sym} 90 370 0 0 {name=l4 lab=GND}
C {gnd.sym} 160 370 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 90 90 0 0 {name=p3 sig_type=std_logic lab=SL1}
C {lab_pin.sym} 160 90 0 0 {name=p4 sig_type=std_logic lab=SL2}
