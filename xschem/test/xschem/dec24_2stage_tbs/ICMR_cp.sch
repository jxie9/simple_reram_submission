v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -540 20 -540 60 {
lab=GND}
N -540 60 -400 60 {
lab=GND}
N -400 20 -400 60 {
lab=GND}
N -400 60 -400 90 {
lab=GND}
N -400 -120 -400 -40 {
lab=VDD}
N -540 -120 -540 -40 {
lab=Vcm}
N -400 150 -400 220 {
lab=VSS}
N 80 0 80 30 {
lab=VSS}
N 80 -130 80 -100 {
lab=VDD}
N -70 -20 0 -20 {
lab=Vinp}
N -70 -20 -70 30 {
lab=Vinp}
N 230 -240 320 -240 {
lab=Vout}
N 320 -240 320 -50 {
lab=Vout}
N 150 -50 320 -50 {
lab=Vout}
N 40 -240 170 -240 {
lab=#net1}
N -120 -240 -20 -240 {
lab=Vinm}
N -120 -240 -120 -80 {
lab=Vinm}
N -120 -80 0 -80 {
lab=Vinm}
N -70 90 -70 150 {
lab=GND}
N 320 10 320 40 {
lab=GND}
N -150 40 -110 40 {
lab=Vcm}
N -110 80 -110 120 {
lab=GND}
N -110 120 -70 120 {
lab=GND}
N 30 -330 30 -280 {
lab=GND}
C {devices/vsource.sym} -400 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -400 120 0 0 {name=V2 value=0 savecurrent=false}
C {devices/vsource.sym} -540 -10 0 0 {name=V3 value=0.9 savecurrent=false}
C {devices/lab_pin.sym} -540 -120 1 0 {name=p1 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} -400 -120 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -400 220 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {amplifiers/dec24/2stageOpamp.sym} 70 -40 0 0 {name=x1}
C {devices/lab_pin.sym} 80 30 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 -130 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vcvs.sym} -70 60 0 0 {name=E1 value=1}
C {devices/vcvs.sym} 10 -240 3 1 {name=E2 value=1}
C {devices/vsource.sym} 200 -240 1 0 {name=V4 value=0.9 avecurrent=false}
C {devices/gnd.sym} -70 150 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 320 -20 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 320 40 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -150 40 0 0 {name=p6 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 30 -330 2 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -10 -280 1 0 {name=p7 sig_type=std_logic lab=Vcm}
C {devices/code_shown.sym} -740 -330 0 0 {name=SPICE 
only_toplevel=false 
value="
.control
dc V3 0 1.8 0.1
plot Vout
plot Vinp Vinn
set deriv(Vout)
let CMRR = abs(deriv(Vinp))/abs(deriv(Vout))
let CMRRdb = db(CMRR)
let CMRRdbmax = maximum(CMRRdb)
plot CMRR
plot CMRRdb
print CMRRdbmax
write ICMR_cp.raw
.endc

"}
C {devices/launcher.sym} -980 -260 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -970 -210 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} -30 -80 1 0 {name=p8 sig_type=std_logic lab=Vinm}
C {devices/lab_pin.sym} -30 -20 3 0 {name=p9 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 240 -50 1 0 {name=p10 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/corner.sym} -890 -100 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} -490 60 0 0 {name=l4 lab=GND}
