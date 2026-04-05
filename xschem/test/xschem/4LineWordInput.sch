v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -90 280 -90 {
lab=WL_IN1}
N 170 -10 280 -10 {
lab=WL_IN2}
N 170 70 280 70 {
lab=WL_IN3}
N 170 150 280 150 {
lab=WL_IN4}
N 170 -110 240 -110 {
lab=#net1}
N 170 -30 240 -30 {
lab=#net1}
N 170 50 240 50 {
lab=#net1}
N 170 130 240 130 {
lab=#net1}
N 170 -170 240 -170 {
lab=#net1}
N 240 -170 240 130 {
lab=#net1}
C {Buffer.sym} 20 -90 0 0 {name=x3}
C {Buffer.sym} 20 -10 0 0 {name=x4}
C {Buffer.sym} 20 70 0 0 {name=x5}
C {Buffer.sym} 20 150 0 0 {name=x6}
C {2-1MUX.sym} 20 -170 0 0 {name=x9}
C {devices/ipin.sym} -130 -110 0 0 {name=p14 lab=WL_LA_IN1}
C {devices/ipin.sym} -130 -30 0 0 {name=p15 lab=WL_LA_IN2}
C {devices/ipin.sym} -130 50 0 0 {name=p16 lab=WL_LA_IN3}
C {devices/ipin.sym} -130 130 0 0 {name=p17 lab=WL_LA_IN4}
C {devices/ipin.sym} -130 -190 0 0 {name=p18 lab=Write_Select}
C {devices/ipin.sym} -130 -170 0 0 {name=p19 lab=Write_Voltage}
C {devices/ipin.sym} -130 -150 0 0 {name=p20 lab=Form_Voltage}
C {devices/lab_pin.sym} 170 -70 2 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 10 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 90 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 170 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -150 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -190 2 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 280 -90 0 0 {name=p51 lab=WL_IN1}
C {devices/opin.sym} 280 -10 0 0 {name=p54 lab=WL_IN2}
C {devices/opin.sym} 280 70 0 0 {name=p55 lab=WL_IN3}
C {devices/opin.sym} 280 150 0 0 {name=p61 lab=WL_IN4}
C {devices/iopin.sym} -130 -280 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -130 -260 2 0 {name=p2 lab=VSS}
