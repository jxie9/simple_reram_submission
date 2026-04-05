v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -150 130 -70 {
lab=OUT}
N 70 -150 70 -70 {
lab=B2}
N 130 70 130 150 {
lab=OUT}
N 70 70 70 150 {
lab=B1}
N 100 0 100 30 {
lab=#net1}
N 100 -30 100 0 {
lab=#net1}
N 130 -110 170 -110 {
lab=OUT}
N 130 110 170 110 {
lab=OUT}
N 170 -110 170 110 {
lab=OUT}
N 10 0 100 0 {
lab=#net1}
N -170 0 -130 0 {
lab=#net2}
N -150 -220 -150 0 {
lab=#net2}
N -150 -220 100 -220 {
lab=#net2}
N 100 -220 100 -190 {
lab=#net2}
N -150 0 -150 220 {
lab=#net2}
N -150 220 100 220 {
lab=#net2}
N 100 190 100 220 {
lab=#net2}
N -240 -30 -240 0 {
lab=#net2}
N -240 0 -240 30 {
lab=#net2}
N -280 -60 -280 60 {
lab=S}
N -310 0 -280 0 {
lab=S}
N -240 0 -170 0 {
lab=#net2}
N -240 -90 -240 -60 {
lab=VDD}
N -240 60 -240 90 {
lab=VSS}
N -240 -110 -240 -90 {
lab=VDD}
N -240 90 -240 110 {
lab=VSS}
N -50 -30 -50 0 {
lab=#net1}
N -50 0 -50 30 {
lab=#net1}
N -90 -60 -90 60 {
lab=#net2}
N -50 -90 -50 -60 {
lab=VDD}
N -50 60 -50 90 {
lab=VSS}
N -50 -110 -50 -90 {
lab=VDD}
N -50 90 -50 110 {
lab=VSS}
N -130 0 -90 0 {
lab=#net2}
N -50 0 10 0 {
lab=#net1}
N 170 0 200 0 {
lab=OUT}
N 60 110 70 110 {
lab=B1}
N 60 -110 70 -110 {
lab=B2}
N -340 -200 -280 -200 {
lab=VDD}
N -340 -160 -280 -160 {
lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 100 -50 1 1 {name=M1
L=0.5
W=15
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 100 -170 1 0 {name=M2
L=0.5
W=15
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 100 170 1 1 {name=M3
L=0.5
W=15
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 100 50 1 0 {name=M4
L=0.5
W=15
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -260 60 0 0 {name=M5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -260 -60 0 0 {name=M6
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
C {lab_pin.sym} -240 -110 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -70 60 0 0 {name=M7
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -70 -60 0 0 {name=M8
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
C {lab_pin.sym} -50 -110 2 0 {name=p13 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -240 110 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -50 110 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {ipin.sym} -310 0 0 0 {name=p2 lab=S}
C {ipin.sym} -340 -200 0 0 {name=p5 lab=VDD}
C {lab_pin.sym} -280 -200 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {ipin.sym} -340 -160 0 0 {name=p9 lab=VSS}
C {lab_pin.sym} -280 -160 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {iopin.sym} 200 0 0 0 {name=p3 lab=OUT}
C {iopin.sym} 60 110 2 0 {name=p14 lab=B1}
C {iopin.sym} 60 -110 2 0 {name=p15 lab=B2}
C {lab_pin.sym} 100 -150 3 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 100 150 1 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 100 -70 1 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 100 70 3 0 {name=p16 sig_type=std_logic lab=VDD
}
