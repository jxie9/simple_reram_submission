v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -370 -100 -310 -100 {
lab=Vin+}
N -370 100 -330 100 {
lab=VDD}
N -460 -100 -430 -100 {
lab=GND}
N -460 -100 -460 100 {
lab=GND}
N -460 100 -430 100 {
lab=GND}
N -170 90 -120 90 {
lab=Vin+}
N 120 60 170 60 {
lab=Vout}
N 120 160 120 170 {
lab=GND}
N 80 60 110 60 {
lab=Vout}
N 110 60 120 60 {
lab=Vout}
N -190 -280 -140 -280 {
lab=Vin+}
N 70 -310 120 -310 {
lab=VoutQ}
N 70 -250 70 -240 {
lab=GND}
N 60 -310 70 -310 {
lab=VoutQ}
N 50 -460 50 -320 {
lab=VoutQ}
N -10 -460 50 -460 {
lab=VoutQ}
N -190 -460 -160 -460 {
lab=VoutQ}
N -190 -460 -190 -350 {
lab=VoutQ}
N -160 -460 -10 -460 {
lab=VoutQ}
N -40 -260 -40 -240 {
lab=GND}
N -10 120 -10 140 {
lab=GND}
N -160 -340 -120 -340 {
lab=VoutQ}
N -120 90 -110 90 {
lab=Vin+}
N -190 -350 -190 -340 {
lab=VoutQ}
N -40 -390 -40 -360 {
lab=VDD}
N 120 60 120 100 {
lab=Vout}
N -50 -80 -30 -80 {
lab=#net1}
N -160 -80 -130 -80 {
lab=#net2}
N -70 -80 -50 -80 {
lab=#net1}
N 30 -80 80 -80 {
lab=Vout}
N 80 -80 80 60 {
lab=Vout}
N -10 -130 30 -130 {
lab=VoutQ}
N -10 -190 -10 -170 {
lab=GND}
N -50 -190 -10 -190 {
lab=GND}
N -50 -190 -50 -180 {
lab=GND}
N -50 -120 -50 -80 {
lab=#net1}
N 50 -320 50 -310 {
lab=VoutQ}
N 60 60 80 60 {
lab=Vout}
N -10 110 -10 120 {
lab=GND}
N 40 -310 50 -310 {
lab=VoutQ}
N 50 -310 60 -310 {
lab=VoutQ}
N -10 0 -10 10 {
lab=VDD}
N 30 -310 40 -310 {
lab=VoutQ}
N -140 -280 -120 -280 {
lab=Vin+}
N -110 90 -90 90 {
lab=Vin+}
N -190 -340 -160 -340 {
lab=VoutQ}
N -160 -80 -160 30 {
lab=#net2}
N -160 30 -90 30 {
lab=#net2}
C {devices/lab_pin.sym} -310 -100 2 0 {name=p5 lab=Vin+
}
C {devices/vsource.sym} -400 100 1 0 {name=Vdd value=1.8 savecurrent=true}
C {devices/vsource.sym} -400 -100 1 0 {name=Vin value=0.9 savecurrent=false}
C {devices/gnd.sym} -460 100 0 1 {name=l10 lab=GND}
C {devices/lab_pin.sym} -170 90 0 0 {name=p1 sig_type=std_logic lab=Vin+}
C {devices/lab_pin.sym} 170 60 2 0 {name=p3 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 120 170 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} 350 -320 0 0 {name=SPICE only_toplevel=true corner=tt}
C {devices/code_shown.sym} 350 -80 0 0 {name=SPICE1 only_toplevel=false value="
.param B=0
.savecurrents
.control

save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vgs] -  @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vds]



save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[vgs] 
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[vds]

save @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs] 
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vds]



save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vgs]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vds]









save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vgs]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vds] 

save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[vgs]
save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[vds]




save v(Vout)

 op
 ac dec 20 1 1e12
 alterparam B=1
 reset
 ac dec 20 1 1e12
 meas ac freq_at_gain db(v(Vout))=0
 meas ac phase_at_gc ph(v(Vout)) at freq_at_gain

 setplot new
 set curplottitle=Loopgain
 let frequency = ac1.frequency
 
 let T = (ac1.i(V2)+ac2.i(V1))/(ac1.i(V1)+ac2.i(V2))
 let Tmag = db(T)
 let Tphase = 180 * cph(T)/pi
 let Pm = 180 + Tphase
 plot Tmag Tphase Pm xlog
 plot Tmag xlog

 plot Tphase xlog
 
 print @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
 print @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gds]
 print @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
 print @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vgs]
 print @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vds] 

print @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vgs] -  @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vth]

print @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs] -  @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]

 print @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gm]
 print @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gds]
 print @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
 print @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vgs]
 print @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vds] 
 
 print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gm]
 print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gds]
 print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[id]
 print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vgs]
 print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vds]

 print @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[gm]
 print @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[gds]
 print @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[id]
 print @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[vgs]
 print @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[vds]

 print @m.x1.xm10.msky130_fd_pr__pfet_01v8_lvt[gm]
 print @m.x1.xm10.msky130_fd_pr__pfet_01v8_lvt[gds]
 print @m.x1.xm10.msky130_fd_pr__pfet_01v8_lvt[id]
 print @m.x1.xm10.msky130_fd_pr__pfet_01v8_lvt[vgs]
 print @m.x1.xm10.msky130_fd_pr__pfet_01v8_lvt[vds]

 

 print @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
 print @m.x1.xm1.msky130_fd_pr__nfet_01v8[gds]
 print @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
 print @m.x1.xm1.msky130_fd_pr__nfet_01v8[vgs] - @m.x1.xm1.msky130_fd_pr__nfet_01v8[vth]
 print @m.x1.xm1.msky130_fd_pr__nfet_01v8[vds] 
 
 print @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]
 print @m.x1.xm3.msky130_fd_pr__nfet_01v8[gds]
 print @m.x1.xm3.msky130_fd_pr__nfet_01v8[id]
 print @m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs] 
 print @m.x1.xm3.msky130_fd_pr__nfet_01v8[vds] 
 
 


 write OpenLoopTB.raw


.endc
"
}
C {devices/gnd.sym} -10 140 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -330 100 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -10 0 3 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/launcher.sym} -430 -230 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -430 -260 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/capa.sym} 120 130 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 0 -80 1 0 {name=V2 value="0 AC \{B\}" savecurrent=true}
C {devices/vsource.sym} -100 -80 3 0 {name=V1 value="0 AC \{1-B\}" savecurrent=true}
C {devices/lab_pin.sym} -190 -280 0 0 {name=p2 sig_type=std_logic lab=Vin+}
C {devices/lab_pin.sym} 120 -310 2 0 {name=p9 sig_type=std_logic lab=VoutQ}
C {devices/gnd.sym} 70 -240 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -40 -240 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -40 -390 3 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 70 -280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -50 -190 2 0 {name=l5 lab=GND}
C {devices/vcvs.sym} -50 -150 2 0 {name=E1 value=1}
C {devices/lab_pin.sym} 30 -130 2 0 {name=p6 sig_type=std_logic lab=VoutQ}
C {amplifiers/dec24/2stageOpamp.sym} -50 -300 0 0 {name=x1}
C {amplifiers/dec24/2stageOpamp.sym} -20 70 0 0 {name=x2}
