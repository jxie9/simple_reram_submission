v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 50 -240 50 {
lab=Vin+}
N -300 250 -260 250 {
lab=VDD}
N -390 50 -360 50 {
lab=GND}
N -390 50 -390 250 {
lab=GND}
N -390 250 -360 250 {
lab=GND}
N -100 230 -50 230 {
lab=Vin+}
N 190 210 240 210 {
lab=Vout}
N 190 310 190 320 {
lab=GND}
N 150 210 180 210 {
lab=Vout}
N 180 210 190 210 {
lab=Vout}
N -120 -140 -70 -140 {
lab=Vin+}
N 140 -160 190 -160 {
lab=VoutQ}
N 140 -100 140 -90 {
lab=GND}
N 130 -160 140 -160 {
lab=VoutQ}
N 120 -310 120 -170 {
lab=VoutQ}
N 60 -310 120 -310 {
lab=VoutQ}
N -120 -310 -90 -310 {
lab=VoutQ}
N -120 -310 -120 -200 {
lab=VoutQ}
N -90 -310 60 -310 {
lab=VoutQ}
N -90 -190 -50 -190 {
lab=VoutQ}
N -50 230 -40 230 {
lab=Vin+}
N -120 -200 -120 -190 {
lab=VoutQ}
N 190 210 190 250 {
lab=Vout}
N 20 70 40 70 {
lab=#net1}
N -90 70 -60 70 {
lab=#net2}
N 0 70 20 70 {
lab=#net1}
N 100 70 150 70 {
lab=Vout}
N 150 70 150 210 {
lab=Vout}
N 60 20 100 20 {
lab=VoutQ}
N 60 -40 60 -20 {
lab=GND}
N 20 -40 60 -40 {
lab=GND}
N 20 -40 20 -30 {
lab=GND}
N 20 30 20 70 {
lab=#net1}
N 120 -170 120 -160 {
lab=VoutQ}
N 130 210 150 210 {
lab=Vout}
N 110 -160 120 -160 {
lab=VoutQ}
N 120 -160 130 -160 {
lab=VoutQ}
N 100 -160 110 -160 {
lab=VoutQ}
N -40 230 -20 230 {
lab=Vin+}
N -120 -190 -90 -190 {
lab=VoutQ}
N -90 70 -90 180 {
lab=#net2}
N -90 180 -20 180 {
lab=#net2}
N -70 -140 -50 -140 {
lab=Vin+}
C {devices/lab_pin.sym} -240 50 2 0 {name=p5 lab=Vin+
}
C {devices/vsource.sym} -330 250 1 0 {name=Vdd value=1.8 savecurrent=true
}
C {devices/vsource.sym} -330 50 1 0 {name=Vin value=0.9 savecurrent=false
}
C {devices/gnd.sym} -390 250 0 1 {name=l10 lab=GND
}
C {devices/lab_pin.sym} -100 230 0 0 {name=p1 sig_type=std_logic lab=Vin+
}
C {devices/lab_pin.sym} 240 210 2 0 {name=p3 sig_type=std_logic lab=Vout
}
C {devices/gnd.sym} 190 320 0 0 {name=l2 lab=GND
}
C {sky130_fd_pr/corner.sym} 420 -170 0 0 {name=SPICE only_toplevel=true corner=tt
}
C {devices/code_shown.sym} 420 70 0 0 {name=SPICE1 only_toplevel=false value="
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
C {devices/gnd.sym} 60 270 0 0 {name=l4 lab=GND
}
C {devices/lab_pin.sym} -260 250 0 1 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 60 150 3 1 {name=p8 sig_type=std_logic lab=VDD
}
C {devices/launcher.sym} -360 -80 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -360 -110 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"
}
C {devices/capa.sym} 190 280 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {devices/vsource.sym} 70 70 1 0 {name=V2 value="0 AC \{B\}" savecurrent=true
}
C {devices/vsource.sym} -30 70 3 0 {name=V1 value="0 AC \{1-B\}" savecurrent=true
}
C {devices/lab_pin.sym} -120 -140 0 0 {name=p2 sig_type=std_logic lab=Vin+
}
C {devices/lab_pin.sym} 190 -160 2 0 {name=p9 sig_type=std_logic lab=VoutQ
}
C {devices/gnd.sym} 140 -90 0 0 {name=l1 lab=GND
}
C {devices/gnd.sym} 30 -100 0 0 {name=l3 lab=GND
}
C {devices/lab_pin.sym} 30 -220 3 1 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/capa.sym} 140 -130 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {devices/gnd.sym} 20 -40 2 0 {name=l5 lab=GND
}
C {devices/vcvs.sym} 20 0 2 0 {name=E1 value=1
}
C {devices/lab_pin.sym} 100 20 2 0 {name=p6 sig_type=std_logic lab=VoutQ
}
C {amplifiers/dec24/5TwithBuffer.sym} 20 -170 0 0 {name=x3
}
C {amplifiers/dec24/5TwithBuffer.sym} 50 200 0 0 {name=x1
}
