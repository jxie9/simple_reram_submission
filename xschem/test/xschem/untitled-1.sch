v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 180 -50 190 {
lab=#net1}
N -50 250 -50 270 {
lab=#net2}
N 160 160 160 180 {
lab=#net3}
N 160 -20 160 60 {
lab=#net4}
N 160 -20 250 -20 {
lab=#net4}
N 250 40 250 60 {
lab=#net5}
N 310 110 370 110 {
lab=#net6}
N 330 170 330 180 {
lab=#net7}
N 40 -70 40 80 {
lab=#net8}
N 310 -70 310 110 {
lab=#net6}
N 40 -70 160 -70 {
lab=#net8}
N 220 -70 310 -70 {
lab=#net6}
N 40 80 80 80 {
lab=#net8}
N -50 140 80 140 {
lab=#net1}
N 230 110 310 110 {
lab=#net6}
N -50 140 -50 180 {
lab=#net1}
N 20 80 40 80 {
lab=#net8}
N -70 80 -40 80 {
lab=#net9}
N -60 -270 -60 -260 {
lab=#net10}
N -60 -260 -60 -240 {
lab=#net10}
N 150 -290 150 -270 {
lab=GND}
N 150 -470 150 -390 {
lab=#net11}
N 150 -470 240 -470 {
lab=#net11}
N 240 -410 240 -390 {
lab=GND}
N 300 -340 360 -340 {
lab=Vout_2}
N 320 -280 320 -270 {
lab=GND}
N 30 -520 30 -370 {
lab=test_v}
N 300 -520 300 -340 {
lab=Vout_2}
N 30 -520 150 -520 {
lab=test_v}
N 30 -370 70 -370 {
lab=test_v}
N -60 -310 70 -310 {
lab=#net10}
N 220 -340 300 -340 {
lab=Vout_2}
N -60 -310 -60 -270 {
lab=#net10}
N 0 -370 30 -370 {
lab=test_v}
N -60 -370 0 -370 {
lab=test_v}
N 210 -520 230 -520 {
lab=#net12}
N 290 -520 300 -520 {
lab=Vout_2}
C {lab_pin.sym} -70 80 0 0 {name=p13 sig_type=std_logic lab=SL1_B2
spice_ignore=true}
C {amplifiers/dec24/2stageOpamp.sym} 150 120 0 0 {name=x5
spice_ignore=true}
C {devices/vsource.sym} 250 10 0 0 {name=vdd1 value=1.8
spice_ignore=true}
C {gnd.sym} 250 60 0 0 {name=l14 lab=GND
spice_ignore=true}
C {capa.sym} 330 140 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {gnd.sym} 330 180 0 0 {name=l15 lab=GND
spice_ignore=true}
C {lab_pin.sym} 370 110 2 0 {name=p16 sig_type=std_logic lab=Vout_2
spice_ignore=true}
C {res.sym} 190 -70 1 0 {name=R1
value=8k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -50 270 0 0 {name=l11 lab=GND
spice_ignore=true}
C {gnd.sym} 160 180 0 0 {name=l16 lab=GND
spice_ignore=true}
C {devices/vsource.sym} -50 220 0 0 {name=vdd3 value=1.2
spice_ignore=true}
C {ammeter.sym} -10 80 3 0 {name=Vmeas1 savecurrent=true
spice_ignore=true}
C {amplifiers/dec24/2stageOpamp.sym} 140 -330 0 0 {name=x1
}
C {devices/vsource.sym} 240 -440 0 0 {name=vdd2 value=1.8
}
C {gnd.sym} 240 -390 0 0 {name=l1 lab=GND
}
C {capa.sym} 320 -310 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {gnd.sym} 320 -270 0 0 {name=l2 lab=GND
}
C {lab_pin.sym} 360 -340 2 0 {name=p1 sig_type=std_logic lab=Vout_2
}
C {res.sym} 180 -520 1 0 {name=R2
value=9k
footprint=1206
device=resistor
m=1
}
C {gnd.sym} -60 -180 0 0 {name=l3 lab=GND
}
C {ammeter.sym} 260 -520 3 0 {name=Vmeas2 savecurrent=true
}
C {lab_pin.sym} 30 -460 0 0 {name=p2 sig_type=std_logic lab=test_v
}
C {gnd.sym} 150 -270 0 0 {name=l4 lab=GND
}
C {devices/vsource.sym} -60 -210 0 0 {name=vcm value=1.2

## 0u (FORM) -> 1u (RESET) -> 2u (SET) -> 3u (IDLE) -> 4u (READ)
}
