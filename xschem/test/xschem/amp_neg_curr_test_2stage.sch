v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -470 -210 -470 -150 {
lab=VDD}
N 20 -50 20 -20 {
lab=VDD}
N 20 80 20 110 {
lab=Vinplus}
N 20 -110 20 -50 {
lab=VDD}
N -90 60 -60 60 {
lab=Vinplus}
N 90 30 250 30 {
lab=Vout}
N 250 -90 250 30 {
lab=Vout}
N -150 -90 50 -90 {
lab=Vinminus}
N -150 -90 -150 0 {
lab=Vinminus}
N -90 180 -90 210 {
lab=GND}
N 110 -90 140 -90 {
lab=#net1}
N 200 -90 250 -90 {
lab=Vout}
N 250 90 250 120 {
lab=GND}
N -470 -90 -470 -50 {
lab=GND}
N -90 60 -90 120 {
lab=Vinplus}
N -150 0 -60 0 {
lab=Vinminus}
N -90 110 20 110 {
lab=Vinplus}
C {devices/vsource.sym} -470 -120 0 0 {name=V1 value=2 savecurrent=false}
C {devices/gnd.sym} -470 -50 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -470 -210 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/simulator_commands_shown.sym} 40 -370 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.control
   save all
   tran 0.1n 5u
   write amp_neg_curr_test_2stage.raw
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
C {amplifiers/dec24/2stageOpamp.sym} 10 40 0 0 {name=x2}
C {devices/res.sym} 80 -90 1 0 {name=R1
value=7.639k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 210 30 1 0 {name=p8 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -110 0 1 0 {name=p9 sig_type=std_logic lab=Vinminus}
C {devices/vsource.sym} -90 150 0 0 {name=V3 value=2 savecurrent=false}
C {devices/gnd.sym} -90 210 0 0 {name=l6 lab=GND}
C {devices/ammeter.sym} 170 -90 3 0 {name=Vmeas savecurrent=true}
C {devices/lab_pin.sym} 20 -110 1 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 250 60 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 250 120 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -70 60 1 0 {name=p3 sig_type=std_logic lab=Vinplus}
C {sky130_fd_pr/corner.sym} -120 -350 0 0 {name=CORNER only_toplevel=true corner=tt}
