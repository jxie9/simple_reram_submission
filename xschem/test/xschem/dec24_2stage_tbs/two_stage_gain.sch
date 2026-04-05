v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 60 -90 60 {
lab=V_in}
N -220 170 -220 190 {
lab=GND}
N -10 80 -10 100 {
lab=GND}
N -10 -40 -10 -20 {
lab=#net1}
N -10 -100 -10 -40 {
lab=#net1}
N -10 -100 80 -100 {
lab=#net1}
N 80 -40 80 -20 {
lab=GND}
N 60 30 160 30 {
lab=Vout}
N 160 90 160 100 {
lab=GND}
N -130 -150 -130 0 {
lab=#net2}
N -130 -150 -10 -150 {
lab=#net2}
N -220 60 -220 90 {
lab=V_in}
N -220 150 -220 170 {
lab=GND}
N -10 -150 50 -150 {
lab=#net2}
N -130 -0 -90 0 {
lab=#net2}
N 140 -150 220 -150 {
lab=GND}
N 220 -150 220 100 {
lab=GND}
N 160 100 220 100 {
lab=GND}
N 160 100 160 130 {
lab=GND}
N 50 -150 70 -150 {
lab=#net2}
N 130 -150 140 -150 {
lab=GND}
C {amplifiers/dec24/2stageOpamp.sym} -20 40 0 0 {name=x2}
C {gnd.sym} -220 190 0 0 {name=l8 lab=GND}
C {gnd.sym} -10 100 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 80 -70 0 0 {name=vdd value=1.8}
C {gnd.sym} 80 -20 0 0 {name=l10 lab=GND}
C {capa.sym} 160 60 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/corner.sym} 260 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 410 -120 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 5u
   write two_stage_gain.raw
.endc
"}
C {devices/vsource.sym} -220 120 0 0 {name=vcm2 value="PWL (0 0 5u 0.005)"}
C {lab_pin.sym} -160 60 1 0 {name=p2 sig_type=std_logic lab=V_in}
C {gnd.sym} 160 130 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 150 30 1 0 {name=p1 sig_type=std_logic lab=Vout}
C {res.sym} 100 -150 3 0 {name=R1
value=7k
footprint=1206
device=resistor
m=1}
