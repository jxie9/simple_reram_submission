v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -860 -200 -860 -140 {
lab=VDD}
N -860 -80 -860 -40 {
lab=GND}
N -410 -130 -370 -130 {
lab=WL}
N -330 -130 -290 -130 {
lab=GND}
N -760 -80 -760 -60 {
lab=GND}
N -330 210 -330 230 {
lab=GND}
N -760 -170 -760 -140 {
lab=BL}
N -580 40 -580 60 {
lab=GND}
N -580 -170 -580 -20 {
lab=WL}
N -330 -200 -330 -160 {
lab=SL_probe}
N -330 110 -330 150 {
lab=SL}
N -330 -300 -330 -260 {
lab=BL}
N 120 -30 240 -30 {
lab=Vout}
N -60 0 -50 -10 {
lab=#net1}
N 190 60 190 90 {
lab=GND}
N 190 -30 190 0 {
lab=Vout}
N -330 -100 -330 -60 {
lab=#net2}
N -330 0 -330 50 {
lab=#net3}
N -330 -60 -260 -60 {
lab=#net2}
N -200 -60 -50 -60 {
lab=probe_n}
N -330 0 -260 0 {
lab=#net3}
N -200 0 -60 0 {
lab=#net1}
N -110 -170 -110 -60 {
lab=probe_n}
N -110 -170 -20 -170 {
lab=probe_n}
N 40 -170 150 -170 {
lab=Vout}
N 150 -170 150 -30 {
lab=Vout}
C {sky130_fd_pr/corner.sym} -480 -720 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} -860 -110 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -860 -40 0 0 {name=l1 lab=GND
}
C {devices/lab_pin.sym} -860 -200 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/reram.sym} -330 -230 0 0 {name=R1 model=sky130_fd_pr_reram__reram_cell spiceprefix=X Tfilament_0=3.8e-9 area_ox=1
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -350 -130 0 0 {name=M5
L=0.5
W=7
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
C {lab_pin.sym} -410 -130 0 0 {name=p7 sig_type=std_logic lab=WL
}
C {lab_pin.sym} -330 -300 1 0 {name=p8 sig_type=std_logic lab=BL
}
C {devices/vsource.sym} -760 -110 0 0 {name=V_BL1 value="PWL (0 3 0.9u 3 1u 0 1.9u 0 2u 2.5 2.9u 2.5 3u 0 3.9u 0 4u 0.2)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {gnd.sym} -760 -60 0 0 {name=l10 lab=GND
}
C {devices/vsource.sym} -330 180 0 0 {name=V_SL1 value="PWL (0 0 0.9u 0 1u 2.5 1.9u 2.5 2u 0)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {gnd.sym} -330 230 0 0 {name=l11 lab=GND
}
C {lab_pin.sym} -760 -170 2 0 {name=p9 sig_type=std_logic lab=BL
}
C {devices/vsource.sym} -580 10 0 0 {name=V5 value="PWL (0 2)"

## Line 1 ==> SET
## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
C {gnd.sym} -580 60 0 0 {name=l12 lab=GND
}
C {lab_pin.sym} -580 -170 2 0 {name=p11 sig_type=std_logic lab=WL
}
C {code_shown.sym} -320 -730 0 0 {name=s1 only_toplevel=false value="
.control
   save all
   tran 0.01n 5u
   write Sense_amp_tb.raw
.endc
"
}
C {gnd.sym} -290 -130 0 0 {name=l14 lab=GND
}
C {devices/lab_pin.sym} -330 -180 0 0 {name=p17 sig_type=std_logic lab=SL_probe
}
C {devices/lab_pin.sym} -330 130 0 0 {name=p18 sig_type=std_logic lab=SL
}
C {amplifiers/dec24/5TwithBuffer.sym} 20 -40 0 0 {name=x1}
C {devices/lab_pin.sym} 30 -90 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -30 2 0 {name=p12 sig_type=std_logic lab=Vout
}
C {res.sym} -330 -30 2 0 {name=R2
value=300
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 190 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 190 90 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -160 -60 1 0 {name=p13 sig_type=std_logic lab=probe_n
}
C {ammeter.sym} -330 80 0 0 {name=Vmeas savecurrent=true}
C {res.sym} -230 -60 3 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -230 0 3 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 10 -170 3 0 {name=R5
value=1.5k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 30 30 0 0 {name=l2 lab=GND
}
C {res.sym} -130 30 0 0 {name=R6
value=1.5k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -130 60 0 0 {name=l4 lab=GND}
