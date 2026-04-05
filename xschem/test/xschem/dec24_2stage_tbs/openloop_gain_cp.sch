v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -630 80 -630 120 {
lab=GND}
N -630 120 -490 120 {
lab=GND}
N -490 80 -490 120 {
lab=GND}
N -490 120 -490 150 {
lab=GND}
N -490 -60 -490 20 {
lab=VDD}
N -630 -60 -630 20 {
lab=Vcm}
N -490 210 -490 280 {
lab=VSS}
N -10 60 -10 90 {
lab=VSS}
N -10 -70 -10 -40 {
lab=VDD}
N -160 40 -90 40 {
lab=Vinp}
N -160 40 -160 90 {
lab=Vinp}
N 140 -180 230 -180 {
lab=GND}
N 60 10 230 10 {
lab=Vout}
N -50 -180 80 -180 {
lab=#net1}
N -210 -180 -110 -180 {
lab=#net2}
N -210 -20 -90 -20 {
lab=Vinm}
N -160 150 -160 210 {
lab=#net3}
N 230 70 230 100 {
lab=GND}
N -240 100 -200 100 {
lab=Vcm}
N -200 140 -200 180 {
lab=#net3}
N -200 180 -160 180 {
lab=#net3}
N -300 -60 -250 -60 {
lab=GND}
N -160 210 -160 280 {
lab=#net3}
N -160 340 -160 410 {
lab=GND}
N -210 -180 -210 -110 {
lab=#net2}
N -210 -50 -210 -20 {
lab=Vinm}
N 230 -180 380 -180 {
lab=GND}
N 380 -180 380 80 {
lab=GND}
N 230 80 380 80 {
lab=GND}
C {devices/vsource.sym} -490 50 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -490 180 0 0 {name=V2 value=0 savecurrent=false}
C {devices/vsource.sym} -630 50 0 0 {name=V3 value=0.9 savecurrent=false}
C {devices/lab_pin.sym} -630 -60 1 0 {name=p1 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} -490 -60 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -490 280 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {amplifiers/dec24/2stageOpamp.sym} -20 20 0 0 {name=x1}
C {devices/lab_pin.sym} -10 90 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 -70 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vcvs.sym} -160 120 0 0 {name=E1 value=1}
C {devices/vcvs.sym} -210 -80 0 0 {name=E2 value=1}
C {devices/vsource.sym} 110 -180 1 0 {name=V4 value=0.9 avecurrent=false}
C {devices/gnd.sym} -160 410 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 230 40 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 230 100 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -240 100 0 0 {name=p6 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} -300 -60 1 1 {name=l3 lab=GND}
C {devices/lab_pin.sym} -250 -100 2 1 {name=p7 sig_type=std_logic lab=Vcm}
C {devices/code_shown.sym} -830 -270 0 0 {name=SPICE 
only_toplevel=false 
value="
.control
dc V3 -1e-3 1e-3 100e-9
plot Vout
plot Vinn
plot deriv(Vout)
let dV = deriv(Vout)
let Av = db(dV)
print maximum(Av)
plot CMRR
plot CMRRdb
print CMRRdbmax
write openloop_gain_cp.raw
.endc

"}
C {devices/launcher.sym} -1070 -200 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -1060 -150 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} -120 -20 1 0 {name=p8 sig_type=std_logic lab=Vinm}
C {devices/lab_pin.sym} -120 40 3 0 {name=p9 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 150 10 1 0 {name=p10 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/corner.sym} -980 -40 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} -580 120 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -160 310 0 0 {name=V5 value=0.9 avecurrent=false}
C {devices/vsource.sym} -80 -180 3 0 {name=V6 value=0.9 avecurrent=false}
