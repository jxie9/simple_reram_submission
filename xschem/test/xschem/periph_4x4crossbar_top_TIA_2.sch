v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 440 -180 460 -180 {
lab=SL1}
N 320 -160 340 -160 {
lab=GND}
N 400 -160 460 -160 {
lab=#net1}
N 420 -140 460 -140 {
lab=neg_1}
N 320 -160 320 -140 {
lab=GND}
N 760 -180 800 -180 {
lab=Vout_1}
N 440 -10 460 -10 {
lab=SL2}
N 320 10 340 10 {
lab=GND}
N 400 10 460 10 {
lab=#net2}
N 420 30 460 30 {
lab=neg_2}
N 320 10 320 30 {
lab=GND}
N 760 -10 800 -10 {
lab=Vout_2}
N -500 -260 -450 -260 {
lab=GND}
N -450 -310 -450 -260 {
lab=GND}
N -450 -320 -450 -310 {
lab=GND}
N -410 120 -410 170 {
lab=GND}
N -470 150 -470 170 {
lab=GND}
N -170 0 -170 170 {
lab=GND}
N -110 -30 -110 170 {
lab=GND}
N -170 -110 -170 -60 {
lab=WL1}
N -110 -110 -110 -90 {
lab=WL2}
N -500 -240 -480 -240 {
lab=BL2}
N -500 -220 -480 -220 {
lab=BL1}
N -500 -200 -480 -200 {
lab=WL1}
N -500 -180 -480 -180 {
lab=WL2}
N -500 -160 -480 -160 {
lab=#net3}
N -500 -140 -480 -140 {
lab=#net4}
N -470 -110 -470 90 {
lab=BL1}
N -410 -110 -410 60 {
lab=BL2}
N 150 -90 150 -40 {
lab=neg_1}
N 150 -40 150 -20 {
lab=neg_1}
N 370 110 370 160 {
lab=neg_2}
N 370 160 370 180 {
lab=neg_2}
N -480 -160 -410 -160 {
lab=#net3}
N -480 -140 -410 -140 {
lab=#net4}
N -350 -160 -330 -160 {
lab=SL2}
N -350 -140 -330 -140 {
lab=SL1}
N 150 40 150 70 {
lab=GND}
N 370 110 410 110 {
lab=neg_2}
N 370 240 370 270 {
lab=GND}
N 150 -90 460 -120 {
lab=neg_1}
N 410 110 460 50 {
lab=neg_2}
N 400 110 420 30 {
lab=neg_2}
N 150 -90 420 -140 {
lab=neg_1}
C {sddec23-08/TIA_02.sym} 610 -150 0 0 {name=x2}
C {lab_pin.sym} 440 -180 0 0 {name=p13 sig_type=std_logic lab=SL1}
C {devices/vsource.sym} 370 -160 1 0 {name=vdd value=1.8}
C {gnd.sym} 320 -140 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 800 -180 2 0 {name=p14 sig_type=std_logic lab=Vout_1}
C {sddec23-08/TIA_02.sym} 610 20 0 0 {name=x3}
C {lab_pin.sym} 440 -10 0 0 {name=p15 sig_type=std_logic lab=SL2}
C {devices/vsource.sym} 370 10 1 0 {name=vdd1 value=1.8}
C {gnd.sym} 320 30 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 800 -10 2 0 {name=p16 sig_type=std_logic lab=Vout_2}
C {gnd.sym} -450 -310 2 0 {name=l1 lab=GND}
C {devices/vsource.sym} -470 120 0 0 {name=V_BL1 value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2 2.9u 2 3u 0 6.9u 0 7u 0.2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR BL1
## LOCAL:  (0u) FORM -> 1u (RESET) -> 2u (SET) -> 3u (OFF) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ
}
C {devices/vsource.sym} -410 90 0 0 {name=V_BL2 value="PWL (0 0 2.9u 0 3u 3 3.9u 3 4u 0 4.9u 0 5u 2 5.9u 2 6u 0 6.9u 0 7u 0.2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR BL2
## LOCAL:  OFF	-> (3u) FORM -> 4u (RESET) -> 5u (SET) -> 6u (RESET) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ

}
C {2x2crossbar.sym} -650 -200 0 0 {name=x1}
C {devices/vsource.sym} 150 10 0 0 {name=V_SL1 value="PWL (0 0 0.9u 0 1u 8 1.9u 8 2u 0)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR SL1
## LOCAL:  (0u) FORM -> 1u (RESET) -> 2u (SET) -> 3u (OFF) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ}
C {devices/vsource.sym} 370 210 0 0 {name=V_SL2 value="PWL (0 0 3.9u 0 4u 1.8 4.9u 1.8 5u 0 5.9u 0 6u 1.8 6.9u 1.8 7u 0)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR SL2
## LOCAL:  OFF	-> (3u) FORM -> 4u (RESET) -> 5u (SET) -> 6u (RESET) -> 7u (READ)
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ}
C {devices/vsource.sym} -170 -30 0 0 {name=V_WL1 value="PWL (0 2 2.9u 2 3u 0 6.9u 0 7u 2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR WL1
## LOCAL:  (0u -> 2u) ON     --> (3u -> 6u) OFF    --> (7u -> 8u) ON
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET Rw --> (7u -> 8u) READ}
C {devices/vsource.sym} -110 -60 0 0 {name=V_WL2 value="PWL (0 0 2.9u 0 3u 2)"

## Element 1,1 ==> SET    Element 2,1 ==> SET
## Element 1,2 ==> SET    Element 2,2 ==> RESET
### FOR WL2
## LOCAL:  (0u -> 2u) OFF    --> (3u -> 6u) ON     --> (7u -> 8u) ON
## GLOBAL: (0u -> 2u) SET R1 --> (3u -> 6u) SET R2 --> (7u -> 8u) READ
}
C {gnd.sym} -470 170 0 0 {name=l2 lab=GND}
C {gnd.sym} -410 170 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -470 -110 0 0 {name=p1 sig_type=std_logic lab=BL1}
C {lab_pin.sym} -410 -110 0 0 {name=p2 sig_type=std_logic lab=BL2}
C {gnd.sym} -170 170 0 0 {name=l6 lab=GND}
C {gnd.sym} -110 170 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -170 -110 0 0 {name=p5 sig_type=std_logic lab=WL1}
C {lab_pin.sym} -110 -110 0 0 {name=p6 sig_type=std_logic lab=WL2}
C {lab_pin.sym} -480 -220 2 0 {name=p7 sig_type=std_logic lab=BL1}
C {lab_pin.sym} -480 -240 2 0 {name=p8 sig_type=std_logic lab=BL2}
C {lab_pin.sym} -330 -160 2 0 {name=p9 sig_type=std_logic lab=SL2}
C {lab_pin.sym} -480 -180 2 0 {name=p11 sig_type=std_logic lab=WL2}
C {lab_pin.sym} -480 -200 2 0 {name=p12 sig_type=std_logic lab=WL1}
C {sky130_fd_pr/corner.sym} -290 -320 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -140 -310 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 10u
   write periph_4x4crossbar_top_TIA_2.raw
.endc
"}
C {gnd.sym} 150 70 0 0 {name=l4 lab=GND}
C {gnd.sym} 370 270 0 0 {name=l15 lab=GND}
C {ammeter.sym} -380 -160 3 0 {name=Vmeas2 savecurrent=true}
C {ammeter.sym} -380 -140 3 0 {name=Vmeas savecurrent=true}
C {lab_pin.sym} -330 -140 2 0 {name=p18 sig_type=std_logic lab=SL1}
C {lab_pin.sym} 150 -70 0 0 {name=p19 sig_type=std_logic lab=neg_1}
C {lab_pin.sym} 370 120 0 0 {name=p20 sig_type=std_logic lab=neg_2}
