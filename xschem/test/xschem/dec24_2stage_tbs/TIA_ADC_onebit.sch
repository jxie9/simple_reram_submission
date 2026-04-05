v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -885 -110 -885 -20 {
lab=Vinminus}
N -885 -20 -725 -20 {
lab=Vinminus}
N -885 -250 -885 -170 {
lab=GND}
N -575 10 -415 10 {
lab=VTia}
N -415 -110 -415 10 {
lab=VTia}
N -815 -110 -615 -110 {
lab=Vinminus}
N -815 -110 -815 -20 {
lab=Vinminus}
N -755 100 -755 130 {
lab=GND}
N -555 -110 -525 -110 {
lab=#net1}
N -465 -110 -415 -110 {
lab=VTia}
N -415 10 -325 10 {
lab=VTia}
N -645 -60 -645 -40 {
lab=VDD}
N -645 60 -645 80 {
lab=GND}
N -755 40 -725 40 {
lab=Vinplus}
N -645 -150 -645 -60 {
lab=VDD}
N -645 80 -645 100 {
lab=GND}
N -585 300 -585 360 {
lab=Vin}
N -385 320 -385 360 {
lab=V1v8}
N -585 420 -585 450 {
lab=GND}
N -455 450 -385 450 {
lab=GND}
N -385 420 -385 450 {
lab=GND}
N -585 450 -535 450 {
lab=GND}
N -535 450 -455 450 {
lab=GND}
N -645 300 -645 340 {
lab=V3v3}
N -645 400 -645 430 {
lab=GND}
N -645 430 -645 450 {
lab=GND}
N -645 450 -585 450 {
lab=GND}
N -700 280 -700 340 {
lab=VDD}
N -700 400 -700 430 {
lab=GND}
N -700 430 -700 450 {
lab=GND}
N -700 450 -650 450 {
lab=GND}
N -650 450 -645 450 {
lab=GND}
N -330 10 -260 10 {
lab=VTia}
N -300 60 -260 30 {
lab=GND}
N -290 -40 -260 -10 {
lab=#net2}
N -290 -120 -290 -100 {
lab=GND}
N 40 -10 100 -10 {
lab=ADC_OUT}
C {devices/isource.sym} -885 -140 0 0 {name=I0 value="pwl(0 0 350ns 144u)"}
C {devices/gnd.sym} -885 -250 2 0 {name=l1 lab=GND}
C {devices/res.sym} -585 -110 1 0 {name=R1
value=7.639k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -455 10 1 0 {name=p1 sig_type=std_logic lab=VTia}
C {devices/lab_pin.sym} -775 -20 1 0 {name=p2 sig_type=std_logic lab=Vinminus}
C {devices/vsource.sym} -755 70 0 0 {name=V1 value=1.2 savecurrent=false}
C {devices/gnd.sym} -755 130 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} -495 -110 3 0 {name=Vmeas savecurrent=true}
C {sky130_fd_pr/corner.sym} -130 500 0 0 {name=SPICE only_toplevel=true corner=tt}
C {devices/launcher.sym} -1000 540 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -990 590 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/code_shown.sym} -830 760 0 0 {name=SPICE2
only_toplevel=false 
value="
.control
save all

tran 1ns 400ns
plot i(Vmeas) i(Vmeas1)
plot Vtia Vmeas
plot Vinadc Vtia
plot Clk
plot Vtia Clk
plot out0 out1 out2 out3
plot Vinminus Vinplus
appendwrite
write Tia_ADCtb.raw
.endc
"}
C {devices/code.sym} -250 515 0 0 {name=STDCELLS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/lab_pin.sym} -745 40 1 0 {name=p4 sig_type=std_logic lab=Vinplus}
C {devices/gnd.sym} -645 100 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -645 -150 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {amplifiers/dec24/2stageOpamp.sym} -655 20 0 0 {name=x1}
C {devices/vsource.sym} -385 390 0 0 {name=V4 value=1.8 savecurrent=false}
C {devices/vsource.sym} -585 390 0 0 {name=V7 value="pwl(0 0 1u 1.1)" savecurrent=true}
C {devices/gnd.sym} -485 450 0 1 {name=l10 lab=GND}
C {devices/vsource.sym} -645 370 0 0 {name=V9 value=3.3 savecurrent=false}
C {devices/vsource.sym} -700 370 0 0 {name=V10 value=1.8 savecurrent=true}
C {devices/lab_pin.sym} -700 280 1 0 {name=p21 lab=VDD
}
C {devices/lab_pin.sym} -585 300 1 0 {name=p22 sig_type=std_logic lab=Vin}
C {devices/vdd.sym} -385 320 0 0 {name=l9 lab=V1v8}
C {devices/vdd.sym} -645 300 0 0 {name=l11 lab=V3v3}
C {sddec23-08/oneBitADC.sym} -110 10 0 0 {name=x2}
C {gnd.sym} -300 60 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -290 -70 2 0 {name=V2 value=1.8 savecurrent=true}
C {gnd.sym} -290 -120 2 0 {name=l4 lab=GND}
C {lab_pin.sym} 100 -10 2 0 {name=p3 sig_type=std_logic lab=ADC_OUT}
