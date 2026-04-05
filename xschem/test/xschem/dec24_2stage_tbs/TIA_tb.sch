v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -490 -190 -430 -190 {
lab=#net1}
N -560 -130 -430 -130 {
lab=#net2}
N -560 -20 -560 0 {
lab=GND}
N -350 -110 -350 -90 {
lab=GND}
N -350 -230 -350 -210 {
lab=#net3}
N -350 -290 -350 -230 {
lab=#net3}
N -350 -290 -260 -290 {
lab=#net3}
N -260 -230 -260 -210 {
lab=GND}
N -280 -160 -180 -160 {
lab=Vout_1}
N -180 -100 -180 -90 {
lab=GND}
N -180 -160 -140 -160 {
lab=Vout_1}
N -470 -340 -470 -190 {
lab=#net1}
N -200 -340 -200 -160 {
lab=Vout_1}
N -470 -340 -350 -340 {
lab=#net1}
N -290 -340 -200 -340 {
lab=Vout_1}
N -640 -190 -640 -150 {
lab=GND}
N -580 -190 -550 -190 {
lab=#net4}
N -560 -130 -560 -100 {
lab=#net2}
N -560 -40 -560 -20 {
lab=GND}
C {amplifiers/dec24/2stageOpamp.sym} -360 -150 0 0 {name=x2}
C {gnd.sym} -560 0 0 0 {name=l8 lab=GND}
C {gnd.sym} -350 -90 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -260 -260 0 0 {name=vdd value=1.8}
C {gnd.sym} -260 -210 0 0 {name=l10 lab=GND}
C {capa.sym} -180 -130 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -180 -90 0 0 {name=l11 lab=GND}
C {lab_pin.sym} -140 -160 2 0 {name=p14 sig_type=std_logic lab=Vout_1}
C {res.sym} -320 -340 1 0 {name=R2
value=7k
footprint=1206
device=resistor
m=1}
C {isource.sym} -610 -190 3 0 {name=I0 value="PWL (0 0 5u 200u)"}
C {gnd.sym} -640 -150 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -80 -320 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 70 -310 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 5u
   write TIA_tb.raw
.endc
"}
C {ammeter.sym} -520 -190 3 0 {name=Vmeas savecurrent=true}
C {devices/vsource.sym} -560 -70 0 0 {name=vcm value=1.2}
