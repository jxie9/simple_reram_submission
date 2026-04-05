v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -120 50 -120 {
lab=Vout}
N -50 -30 -50 10 {
lab=Vinplus}
N -50 70 -50 110 {
lab=GND}
N -50 -60 50 -60 {
lab=Vinplus}
N 100 -370 180 -370 {
lab=Vout}
N 200 -90 300 -90 {
lab=Vout}
N 320 -70 320 190 {
lab=Vout}
N 320 250 320 270 {
lab=GND}
N -390 -90 -390 -10 {
lab=GND}
N -390 50 -390 90 {
lab=VSS}
N -390 -220 -390 -150 {
lab=VDD}
N -480 -40 -390 -40 {
lab=GND}
N 130 -170 130 -130 {
lab=VDD}
N 130 -40 130 -10 {
lab=GND}
N -480 -220 -480 -160 {
lab=Vcm}
N -480 -100 -480 -40 {
lab=GND}
N -130 20 -90 20 {
lab=Vcm}
N -90 60 -90 110 {
lab=GND}
N -90 110 -50 110 {
lab=GND}
N 300 -90 320 -90 {
lab=Vout}
N 320 -90 320 -70 {
lab=Vout}
N -50 -60 -50 -30 {
lab=Vinplus}
N 240 -370 320 -370 {
lab=Vout}
N 320 -370 320 -80 {
lab=Vout}
N -70 -370 40 -370 {
lab=Vout}
N -70 -370 -70 -120 {
lab=Vout}
N 180 -370 240 -370 {
lab=Vout}
N 40 -370 100 -370 {
lab=Vout}
C {devices/vsource.sym} -480 -130 0 0 {name=V2 value=0.9 savecurrent=false}
C {devices/capa.sym} 320 220 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 320 270 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -50 110 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -390 -120 0 0 {name=V6 value=1.8 savecurrent=false}
C {devices/gnd.sym} -480 -40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -390 -220 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 -170 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} 450 60 0 0 {name=SPICE only_toplevel=true corner=tt}
C {devices/code_shown.sym} -1090 -440 0 0 {name=spice1 only_toplevel=true value="* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 
.option savecurrents

.control
save all
save @x1.m.xm5.msky130_fd_pr__nfet_01v8[gm]
save @x1.m.xm5.msky130_fd_pr__nfet_01v8[gds]
save @x1.m.xm5.msky130_fd_pr__nfet_01v8[id]
save @x1.m.xm5.msky130_fd_pr__nfet_01v8[vth]
save @x1.m.xm5.msky130_fd_pr__nfet_01v8[vgs]
save @x1.m.xm5.msky130_fd_pr__nfet_01v8[vds]

save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[gds]
save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[vth]
save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[vds]
save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[vgs]

save @x1.m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
save @x1.m.xm3.msky130_fd_pr__pfet_01v8_lvt[gds]
save @x1.m.xm3.msky130_fd_pr__pfet_01v8_lvt[id]
save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[vth]
save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[vds]
save @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[vgs]


dc V2 0 1.8 0.01
let dVout = deriv(Vout)
let dVcm = deriv(Vinplus)
  
plot Vout 
plot Vinplus 
plot Vinminus
plot dVcm/dVout
plot dVout
plot @x1.m.xm5.msky130_fd_pr__nfet_01v8[gm]
plot @x1.m.xm5.msky130_fd_pr__nfet_01v8[gds]
plot @x1.m.xm5.msky130_fd_pr__nfet_01v8[id]

plot @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[gds]
plot @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
plot @x1.m.xm4.msky130_fd_pr__pfet_01v8_lvt[id]

plot @x1.m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
plot @x1.m.xm3.msky130_fd_pr__pfet_01v8_lvt[gds]
plot @x1.m.xm3.msky130_fd_pr__pfet_01v8_lvt[id]



 set appendwrite
 set filetype=binary
 write ICMRtb.raw
 
.endc
" 

}
C {devices/vcvs.sym} -50 40 0 0 {name=E1 value=1}
C {devices/lab_pin.sym} -130 20 0 0 {name=p6 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} -480 -220 1 0 {name=p7 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 320 10 2 0 {name=p8 sig_type=std_logic lab=Vout}
C {devices/launcher.sym} -320 240 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/ngspice_probe.sym} -40 -120 0 0 {name=r1}
C {devices/ngspice_probe.sym} -10 -370 0 0 {name=r2}
C {devices/vsource.sym} -390 20 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 130 -10 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 10 -60 3 0 {name=p9 sig_type=std_logic lab=Vinplus}
C {amplifiers/dec24/2stageOpamp.sym} 120 -80 0 0 {name=x2}
C {devices/lab_pin.sym} -390 90 3 0 {name=p2 sig_type=std_logic lab=VSS}
