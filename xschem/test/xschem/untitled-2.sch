v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -210 -230 -150 {
lab=VDD}
N -230 -90 -230 -50 {
lab=GND}
N -310 -210 -310 -150 {
lab=vb1_i}
N -310 -90 -310 -50 {
lab=GND}
N -110 370 -110 400 {
lab=#net1}
N -110 460 -110 510 {
lab=GND}
N 200 430 260 430 {
lab=Vout}
N 240 490 240 520 {
lab=GND}
N -110 400 -10 460 {
lab=#net1}
N -110 460 -10 400 {
lab=GND}
N -10 310 -10 400 {
lab=GND}
N 210 310 210 430 {
lab=Vout}
N -10 310 70 310 {
lab=GND}
N 130 310 210 310 {
lab=Vout}
N -10 460 -10 480 {
lab=#net1}
C {devices/isource.sym} -110 340 0 0 {name=I1 value="10u"
}
C {sky130_fd_pr/corner.sym} -130 -390 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} 20 -370 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.control
   save all
   dc I1 1u 144u 9u
   write Sense_amp_tb.raw
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
#"
}
C {devices/vsource.sym} -230 -120 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -230 -50 0 0 {name=l1 lab=GND
}
C {devices/lab_pin.sym} -230 -210 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -110 310 2 0 {name=l3 lab=GND
}
C {devices/vsource.sym} -310 -120 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -310 -50 0 0 {name=l8 lab=GND
}
C {devices/lab_pin.sym} -310 -210 1 0 {name=p15 sig_type=std_logic lab=vb1_i}
C {amplifiers/dec24/2stageOpamp.sym} 120 440 0 0 {name=x2
}
C {res.sym} -110 430 0 0 {name=R4
value=0.02
footprint=1206
device=resistor
m=1
}
C {gnd.sym} 130 480 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} -110 510 0 0 {name=l18 lab=GND
}
C {lab_pin.sym} 260 430 2 0 {name=p13 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 130 380 2 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 240 460 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {devices/gnd.sym} 240 520 0 0 {name=l19 lab=GND
}
C {res.sym} 20 460 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
}
C {res.sym} 20 400 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1
}
C {res.sym} 100 310 1 0 {name=R3
value=7k
footprint=1206
device=resistor
m=1
}
C {res.sym} -10 510 2 0 {name=R5
value=7k
footprint=1206
device=resistor
m=1
}
C {devices/gnd.sym} -10 540 0 0 {name=l2 lab=GND
}
