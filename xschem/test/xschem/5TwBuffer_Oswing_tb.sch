v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 90 -240 130 {
lab=GND}
N -240 130 -100 130 {
lab=GND}
N -100 90 -100 130 {
lab=GND}
N -100 130 -100 160 {
lab=GND}
N -100 -50 -100 30 {
lab=VDD}
N -240 -50 -240 30 {
lab=Vin}
N 230 40 300 40 {
lab=GND}
N 180 -10 300 -10 {
lab=Vinm}
N 590 110 590 140 {
lab=GND}
N 230 40 230 110 {
lab=GND}
N 490 -200 490 20 {
lab=#net1}
N 230 -200 230 -10 {
lab=Vinm}
N 230 -200 360 -200 {
lab=Vinm}
N 70 -10 120 -10 {
lab=Vin}
N 590 20 590 50 {
lab=Vout}
N 470 20 590 20 {
lab=Vout}
N 420 -200 490 -200 {}
C {devices/vsource.sym} -100 60 0 0 {name=V1 value=0.9 savecurrent=false}
C {devices/vsource.sym} -100 190 0 0 {name=V2 value=-0.9 savecurrent=false}
C {devices/vsource.sym} -240 60 0 0 {name=V3 value=0.9 savecurrent=false}
C {devices/lab_pin.sym} -240 -50 1 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -100 -50 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 80 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -40 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 230 110 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 590 80 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 590 140 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -440 -260 0 0 {name=SPICE 
only_toplevel=false 
value="
.control
dc V3 0 1.8 1e-3
plot Vout
plot Vinm
let dV = deriv(Vout)
plot dV


print CMRRdbmax
write Outputswing.raw
.endc

"}
C {devices/launcher.sym} -680 -190 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -670 -140 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} 270 -10 1 0 {name=p8 sig_type=std_logic lab=Vinm}
C {devices/lab_pin.sym} 540 20 1 0 {name=p10 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/corner.sym} -590 -30 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} -190 130 0 0 {name=l4 lab=GND}
C {devices/res.sym} 390 -200 1 0 {name=R1
value=10M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 150 -10 1 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 70 -10 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {amplifiers/dec24/5TwithBuffer.sym} 370 10 0 0 {name=x2}
