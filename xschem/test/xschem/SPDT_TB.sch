v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -150 140 -70 {
lab=#net1}
N 80 -150 80 -70 {
lab=B2}
N 140 70 140 150 {
lab=#net1}
N 80 70 80 150 {
lab=#net2}
N 110 -0 110 30 {
lab=V_mid2}
N 110 -30 110 0 {
lab=V_mid2}
N 140 -110 180 -110 {
lab=#net1}
N 140 110 180 110 {
lab=#net1}
N 180 -110 180 110 {
lab=#net1}
N 20 0 110 0 {
lab=V_mid2}
N -160 -0 -120 0 {
lab=V_mid}
N -140 -220 -140 0 {
lab=V_mid}
N -140 -220 110 -220 {
lab=V_mid}
N 110 -220 110 -190 {
lab=V_mid}
N -140 0 -140 220 {
lab=V_mid}
N -140 220 110 220 {
lab=V_mid}
N 110 190 110 220 {
lab=V_mid}
N -40 -130 80 -130 {
lab=B2}
N 360 -140 360 -100 {
lab=GND}
N 360 -260 360 -200 {
lab=S}
N 500 -140 500 -100 {
lab=GND}
N 500 -260 500 -200 {
lab=B2}
N -420 0 -300 0 {
lab=S}
N -230 -30 -230 -0 {
lab=V_mid}
N -230 -0 -230 30 {
lab=V_mid}
N -270 -60 -270 60 {
lab=S}
N -300 0 -270 0 {
lab=S}
N -230 -0 -160 -0 {
lab=V_mid}
N -230 -90 -230 -60 {
lab=VDD}
N -230 60 -230 90 {
lab=GND}
N -440 -220 -440 -180 {
lab=VDD}
N -440 -120 -440 -80 {
lab=GND}
N -230 -110 -230 -90 {
lab=VDD}
N -230 90 -230 110 {
lab=GND}
N -40 -30 -40 0 {
lab=V_mid2}
N -40 0 -40 30 {
lab=V_mid2}
N -80 -60 -80 60 {
lab=V_mid}
N -40 -90 -40 -60 {
lab=VDD}
N -40 60 -40 90 {
lab=GND}
N -40 -110 -40 -90 {
lab=VDD}
N -40 90 -40 110 {
lab=GND}
N -120 -0 -80 -0 {
lab=V_mid}
N -40 0 20 0 {
lab=V_mid2}
N 80 150 110 150 {
lab=#net2}
N 110 70 140 70 {
lab=#net1}
N 110 -150 140 -150 {
lab=#net1}
N 80 -70 110 -70 {
lab=B2}
N -40 140 -10 140 {
lab=B1}
N 50 140 80 140 {
lab=#net2}
N 180 0 210 0 {
lab=#net1}
N 270 0 300 0 {
lab=OUT}
N 300 0 370 0 {
lab=OUT}
N 430 -120 430 -100 {
lab=GND}
N 430 -260 430 -240 {
lab=B1}
N 430 -240 430 -180 {
lab=B1}
C {lab_pin.sym} -420 0 0 0 {name=p19 sig_type=std_logic lab=S}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 -50 1 1 {name=M1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 110 -170 1 0 {name=M2
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 170 1 1 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 110 50 1 0 {name=M4
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} -40 -130 0 0 {name=p1 sig_type=std_logic lab=B2}
C {lab_pin.sym} -40 140 0 0 {name=p2 sig_type=std_logic lab=B1}
C {lab_pin.sym} 370 0 2 0 {name=p3 sig_type=std_logic lab=OUT}
C {sky130_fd_pr/corner.sym} -350 -440 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -200 -430 0 0 {name=NGSPICE 
only_toplevel=true 
value="
.control
   save all
   tran 0.1n 3u
   write SPDT_TB.raw
.endc
"}
C {devices/vsource.sym} 360 -170 0 0 {name=V_IN value="PWL (0 0 0.9u 0 1u 1.8)"}
C {devices/gnd.sym} 360 -100 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 500 -170 0 0 {name=V_WL2 value=2}
C {devices/gnd.sym} 500 -100 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 430 -100 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -140 -40 2 0 {name=p4 sig_type=std_logic lab=V_mid}
C {lab_pin.sym} 50 0 3 0 {name=p5 sig_type=std_logic lab=V_mid2}
C {lab_pin.sym} 360 -260 0 0 {name=p6 sig_type=std_logic lab=S}
C {lab_pin.sym} 500 -260 0 0 {name=p7 sig_type=std_logic lab=B2}
C {lab_pin.sym} 430 -260 0 0 {name=p8 sig_type=std_logic lab=B1}
C {devices/capa.sym} 300 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 300 60 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -250 60 0 0 {name=M5
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -250 -60 0 0 {name=M6
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} -440 -150 0 0 {name=V_IN1 value=3.3}
C {lab_pin.sym} -440 -220 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -440 -80 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -230 -110 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -60 60 0 0 {name=M7
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -60 -60 0 0 {name=M8
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} -40 -110 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -230 110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -40 110 0 0 {name=l2 lab=GND}
C {ammeter.sym} 240 0 3 0 {name=Vmeas savecurrent=true}
C {ammeter.sym} 20 140 3 0 {name=Vmeas1 savecurrent=true}
C {isource.sym} 430 -150 2 0 {name=I0 value=18u}
