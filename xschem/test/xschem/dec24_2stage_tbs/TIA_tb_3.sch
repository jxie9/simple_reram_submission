v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -120 100 -120 {
lab=#net1}
N -80 -120 -80 40 {
lab=#net1}
N -70 40 -10 40 {
lab=#net1}
N -40 20 -10 20 {
lab=GND}
N -40 -10 -40 20 {
lab=GND}
N -80 -120 -70 -120 {
lab=#net1}
N -80 40 -70 40 {
lab=#net1}
N 290 0 370 0 {
lab=mid_v}
N 160 -120 330 -120 {
lab=mid_v}
N 330 -120 330 0 {
lab=mid_v}
N -10 -50 -10 0 {
lab=VDD}
N -50 60 -10 60 {
lab=GND}
N -130 40 -80 40 {
lab=#net1}
N -50 60 -50 80 {
lab=GND}
N -250 40 -250 60 {
lab=GND}
N 370 0 400 0 {
lab=mid_v}
N -500 50 -500 100 {
lab=VDD}
N -500 160 -500 180 {
lab=GND}
C {amplifiers/dec23/OpAmp5TNeg.sym} 140 30 0 0 {name=x1}
C {gnd.sym} -40 -10 2 0 {name=l8 lab=GND}
C {lab_pin.sym} 400 0 3 0 {name=p14 sig_type=std_logic lab=mid_v
}
C {lab_pin.sym} -10 -50 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {isource.sym} -220 40 3 0 {name=I0 value="PWL (0 0 5u 200u)"}
C {ammeter.sym} -160 40 3 0 {name=Vmeas savecurrent=true}
C {gnd.sym} -50 80 0 0 {name=l2 lab=GND}
C {gnd.sym} -250 60 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/res_generic_po.sym} 130 -120 1 0 {name=R3
W=.33
L=980
model=res_generic_po
spiceprefix=X
spice_ignore=false
 mult=1}
C {sky130_fd_pr/corner.sym} -550 -290 0 0 {name=CORNER1 only_toplevel=false corner=tt}
C {code_shown.sym} -400 -280 0 0 {name=NGSPICE1 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 5u
   write TIA_tb_3.raw
.endc
"}
C {devices/vsource.sym} -500 130 0 0 {name=vdd value=1.8}
C {lab_pin.sym} -500 50 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -500 180 0 0 {name=l1 lab=GND}
