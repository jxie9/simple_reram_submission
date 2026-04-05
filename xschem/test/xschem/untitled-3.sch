v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -340 -100 -180 -100 {
lab=#net1}
N -180 0 -140 0 {
lab=#net1}
N -340 -40 -200 -40 {
lab=#net2}
N -200 -40 -200 -20 {
lab=#net2}
N -180 -100 -180 0 {
lab=#net1}
N -200 -20 -140 -20 {
lab=#net2}
N -340 20 -210 20 {
lab=#net3}
N -210 20 -210 40 {
lab=#net3}
N -210 40 -140 40 {
lab=#net3}
N -340 80 -180 80 {
lab=#net4}
N -180 20 -180 80 {
lab=#net4}
N -180 20 -140 20 {
lab=#net4}
N -540 -100 -480 -100 {
lab=#net5}
N -540 -40 -480 -40 {
lab=#net6}
N -540 20 -480 20 {
lab=#net7}
N -540 80 -480 80 {
lab=#net8}
C {4x4crossbar.sym} 10 0 0 1 {name=x1}
C {StandardCells/inverter.sym} -420 -100 0 0 {name=x2}
C {StandardCells/inverter.sym} -420 -40 0 0 {name=x3}
C {StandardCells/inverter.sym} -420 20 0 0 {name=x4}
C {StandardCells/inverter.sym} -420 80 0 0 {name=x5}
