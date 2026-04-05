v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 30 -150 30 {
lab=V_SL_t}
N -210 10 -150 10 {
lab=I_in}
N -210 -90 -210 10 {
lab=I_in}
N 170 -90 170 -30 {
lab=Vout}
N 150 -30 170 -30 {
lab=Vout}
N 170 -30 220 -30 {
lab=Vout}
N -240 -10 -150 -10 {
lab=GND}
N -210 -90 -40 -90 {
lab=I_in}
N 20 -90 170 -90 {
lab=Vout}
N -210 30 -210 90 {
lab=V_SL_t}
N -340 -30 -300 -30 {
lab=GND}
N -240 -30 -150 -30 {
lab=#net1}
C {amplifiers/dec23/OpAmp5TNeg.sym} 0 0 0 0 {name=x1}
C {devices/vsource.sym} -210 120 0 0 {name=V_SL value=1.8}
C {gnd.sym} -210 150 0 0 {name=l3 lab=GND}
C {gnd.sym} -240 -10 1 0 {name=l1 lab=GND}
C {gnd.sym} -340 -30 1 0 {name=l2 lab=GND}
C {sky130_fd_pr/res_generic_po.sym} -10 -90 1 0 {name=R1
W=.33
L=980
model=res_generic_po
spiceprefix=X
spice_ignore=false
 mult=1}
C {devices/lab_pin.sym} -210 -90 0 0 {name=p2 sig_type=std_logic lab=I_in}
C {devices/lab_pin.sym} 220 -30 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/corner.sym} -270 -280 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -120 -270 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 2u
   write amp_neg_curr_test_5T.raw
.endc
"}
C {devices/lab_pin.sym} -210 60 0 0 {name=p3 sig_type=std_logic lab=V_SL_t}
C {devices/vsource.sym} -270 -30 1 0 {name=V_SL1 value=1.8}
