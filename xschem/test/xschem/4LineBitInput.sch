v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -50 90 -50 {
lab=VDD}
N 90 -30 100 -30 {
lab=#net1}
N 90 50 100 50 {
lab=VDD}
N 90 70 100 70 {
lab=#net1}
N 90 90 100 90 {
lab=VSS}
N 90 -10 100 -10 {
lab=VSS}
N 90 150 100 150 {
lab=VDD}
N 90 170 100 170 {
lab=#net1}
N 90 190 100 190 {
lab=VSS}
N 90 250 100 250 {
lab=VDD}
N 90 270 100 270 {
lab=#net1}
N 90 290 100 290 {
lab=VSS}
N 90 -130 100 -130 {
lab=VDD}
N 90 -90 100 -90 {
lab=VSS}
N 90 -110 150 -110 {
lab=#net1}
N 100 270 150 270 {
lab=#net1}
N 100 170 150 170 {
lab=#net1}
N 100 70 150 70 {
lab=#net1}
N 100 -30 150 -30 {
lab=#net1}
N 150 -110 150 270 {
lab=#net1}
N 90 10 180 10 {
lab=BL_IN1}
N 90 110 180 110 {
lab=BL_IN2}
N 90 210 180 210 {
lab=BL_IN3}
N 90 310 180 310 {
lab=BL_IN4}
N -300 -10 -210 -10 {
lab=v02}
N -240 -10 -240 290 {
lab=v02}
N -240 290 -210 290 {
lab=v02}
N -240 190 -210 190 {
lab=v02}
N -240 90 -210 90 {
lab=v02}
N -300 50 -210 50 {
lab=BL_LA_IN2}
N -300 150 -210 150 {
lab=BL_LA_IN3}
N -300 250 -210 250 {
lab=BL_LA_IN4}
N -310 -30 -210 -30 {
lab=Write_Form_Select}
N -270 -30 -270 270 {
lab=Write_Form_Select}
N -270 270 -210 270 {
lab=Write_Form_Select}
N -270 170 -210 170 {
lab=Write_Form_Select}
N -270 70 -210 70 {
lab=Write_Form_Select}
N -300 -50 -210 -50 {
lab=BL_LA_IN1}
C {1LineBitInput.sym} -60 -20 0 0 {name=x7}
C {1LineBitInput.sym} -60 80 0 0 {name=x8}
C {1LineBitInput.sym} -60 180 0 0 {name=x10}
C {1LineBitInput.sym} -60 280 0 0 {name=x14}
C {devices/lab_pin.sym} 100 290 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 190 2 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 90 2 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 -10 2 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 250 2 0 {name=p42 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 100 150 2 0 {name=p43 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 100 50 2 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 90 -50 2 0 {name=p45 sig_type=std_logic lab=VDD}
C {2-1MUX.sym} -60 -110 0 0 {name=x15}
C {devices/lab_pin.sym} 100 -90 2 0 {name=p46 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 -130 2 0 {name=p47 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -210 -130 0 0 {name=p57 lab=Write_Select}
C {devices/ipin.sym} -300 -50 0 0 {name=p48 lab=BL_LA_IN1}
C {devices/ipin.sym} -300 50 0 0 {name=p49 lab=BL_LA_IN2}
C {devices/ipin.sym} -300 150 0 0 {name=p50 lab=BL_LA_IN3}
C {devices/ipin.sym} -300 250 0 0 {name=p52 lab=BL_LA_IN4}
C {devices/opin.sym} 180 10 0 0 {name=p53 lab=BL_IN1}
C {devices/opin.sym} 180 110 0 0 {name=p51 lab=BL_IN2}
C {devices/opin.sym} 180 210 0 0 {name=p54 lab=BL_IN3}
C {devices/opin.sym} 180 310 0 0 {name=p55 lab=BL_IN4}
C {devices/ipin.sym} -210 -110 0 0 {name=p62 lab=v25}
C {devices/ipin.sym} -210 -90 0 0 {name=p63 lab=v3}
C {devices/ipin.sym} -310 -30 0 0 {name=p64 lab=Write_Form_Select}
C {devices/ipin.sym} -300 -10 0 0 {name=p56 lab=v02}
C {devices/iopin.sym} -270 -250 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -270 -230 2 0 {name=p2 lab=VSS}
