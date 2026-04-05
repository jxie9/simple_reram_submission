v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -730 70 -730 110 {
lab=GND}
N -730 110 -730 140 {
lab=GND}
N -730 -70 -730 10 {
lab=VDD}
N -730 200 -730 270 {
lab=VSS}
N -730 110 -690 110 {
lab=GND}
N 100 -0 220 -0 {
lab=Vout}
N -80 30 -70 20 {
lab=#net1}
N 170 90 170 120 {
lab=GND}
N 170 0 170 30 {
lab=Vout}
N -350 -70 -350 -30 {
lab=#net2}
N -350 30 -350 80 {
lab=#net3}
N -410 -160 -410 -130 {
lab=GND}
N -410 -160 -350 -160 {
lab=GND}
N -350 -160 -350 -130 {
lab=GND}
N -130 -140 -130 -30 {
lab=probe_n}
N -130 -140 -40 -140 {
lab=probe_n}
N 20 -140 130 -140 {
lab=Vout}
N 130 -140 130 -0 {
lab=Vout}
N -350 -30 -260 -30 {
lab=#net2}
N -200 -30 -70 -30 {
lab=probe_n}
N -350 30 -260 30 {
lab=#net3}
N -200 30 -80 30 {
lab=#net1}
C {amplifiers/dec24/5TwithBuffer.sym} 0 -10 0 0 {name=x1}
C {devices/vsource.sym} -730 40 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -730 170 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -730 -70 1 0 {name=p2 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -730 270 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -690 110 0 0 {name=l2 lab=GND
}
C {devices/lab_pin.sym} 10 -60 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 10 60 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 0 2 0 {name=p5 sig_type=std_logic lab=Vout
}
C {res.sym} -350 0 2 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 170 60 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 170 120 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -300 -280 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/isource.sym} -350 -100 0 0 {name=I1 value="10u"}
C {devices/gnd.sym} -350 140 0 0 {name=l3 lab=GND
}
C {devices/gnd.sym} -410 -130 0 0 {name=l4 lab=GND
}
C {devices/lab_pin.sym} -180 -30 1 0 {name=p6 sig_type=std_logic lab=probe_n
}
C {devices/simulator_commands_shown.sym} -130 -290 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.control
   save all
   dc I1 1u 144u 9u
   write 5TwBuffer_tb.raw
.endc
"
#value="
#.option reltol=1e-5
#+  abstol=1e-14 savecurrents
#.control
#  save all
#  write OpenLoopTest.raw
#  set appendwrite
#  dc I1 18u 144u 9u
#  plot i(Vmeas) 
#  plot Vout 
#  plot Vinminus
#  plot Vinplus
#.endc
#"}
C {ammeter.sym} -350 110 0 0 {name=Vmeas savecurrent=true}
C {res.sym} -10 -140 3 0 {name=R4
value=30k
footprint=1206
device=resistor
m=1}
C {res.sym} -130 60 0 0 {name=R5
value=30k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -130 90 0 0 {name=l5 lab=GND}
C {res.sym} -230 -30 1 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {res.sym} -230 30 1 0 {name=R3
value=100
footprint=1206
device=resistor
m=1}
