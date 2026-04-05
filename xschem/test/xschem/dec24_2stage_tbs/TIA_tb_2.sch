v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -430 290 -430 {
lab=#net1}
N 110 -430 110 -270 {
lab=#net1}
N 120 -270 180 -270 {
lab=#net1}
N 150 -290 180 -290 {
lab=GND}
N 150 -320 150 -290 {
lab=GND}
N 110 -430 120 -430 {
lab=#net1}
N 110 -270 120 -270 {
lab=#net1}
N 480 -310 560 -310 {
lab=mid_v}
N 350 -430 520 -430 {
lab=mid_v}
N 520 -430 520 -310 {
lab=mid_v}
N 180 -360 180 -310 {
lab=VDD}
N 140 -250 180 -250 {
lab=GND}
N 60 -270 110 -270 {
lab=#net1}
N -290 -230 -290 -180 {
lab=VDD}
N -290 -120 -290 -100 {
lab=GND}
N 140 -250 140 -230 {
lab=GND}
N -60 -270 -60 -250 {
lab=GND}
N 650 -290 690 -290 {
lab=GND}
N 650 -290 650 -270 {
lab=GND}
N 650 -460 650 -440 {
lab=GND}
N 650 -380 650 -350 {
lab=#net2}
N 650 -350 690 -350 {
lab=#net2}
N 610 -330 640 -330 {
lab=GND}
N 610 -360 610 -330 {
lab=GND}
N 640 -330 690 -330 {
lab=GND}
N 560 -310 590 -310 {
lab=mid_v}
N 650 -310 690 -310 {
lab=#net3}
N 990 -350 1060 -350 {
lab=Vout_1}
N 670 -500 670 -310 {
lab=#net3}
N 670 -500 790 -500 {
lab=#net3}
N 850 -500 1020 -500 {
lab=Vout_1}
N 1020 -500 1020 -350 {
lab=Vout_1}
C {amplifiers/dec23/OpAmp5TNeg.sym} 330 -280 0 0 {name=x1}
C {gnd.sym} 150 -320 2 0 {name=l8 lab=GND}
C {lab_pin.sym} 560 -310 3 0 {name=p14 sig_type=std_logic lab=mid_v
}
C {lab_pin.sym} 180 -360 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {isource.sym} -30 -270 3 0 {name=I0 value="PWL (0 0 5u 200u)"}
C {ammeter.sym} 30 -270 3 0 {name=Vmeas savecurrent=true}
C {sky130_fd_pr/corner.sym} -420 -520 0 0 {name=CORNER1 only_toplevel=false corner=tt}
C {code_shown.sym} -270 -510 0 0 {name=NGSPICE1 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 5u
   write TIA_tb_2.raw
.endc
"}
C {devices/vsource.sym} -290 -150 0 0 {name=vdd value=1.8}
C {lab_pin.sym} -290 -230 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -290 -100 0 0 {name=l1 lab=GND}
C {gnd.sym} 140 -230 0 0 {name=l2 lab=GND}
C {gnd.sym} -60 -250 0 0 {name=l3 lab=GND}
C {amplifiers/dec23/OpAmp5TNeg.sym} 840 -320 0 0 {name=x2}
C {lab_pin.sym} 1060 -350 2 0 {name=p2 sig_type=std_logic lab=Vout_1}
C {gnd.sym} 650 -270 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 650 -410 2 0 {name=vdd1 value=1.8}
C {gnd.sym} 650 -460 2 0 {name=l5 lab=GND}
C {gnd.sym} 610 -360 2 0 {name=l6 lab=GND}
C {sky130_fd_pr/res_generic_po.sym} 620 -310 1 0 {name=R4
W=.33
L=340
model=res_generic_po
spiceprefix=X
spice_ignore=false
 mult=1}
C {sky130_fd_pr/res_generic_po.sym} 820 -500 1 0 {name=R2
W=.33
L=340
model=res_generic_po
spiceprefix=X
spice_ignore=false
 mult=1}
C {sky130_fd_pr/res_generic_po.sym} 320 -430 1 0 {name=R3
W=.33
L=980
model=res_generic_po
spiceprefix=X
spice_ignore=false
 mult=1}
