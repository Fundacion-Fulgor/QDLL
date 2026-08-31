v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -210 -120 -210 -99 {lab=vdd}
N -210 -120 -190 -120 {lab=vdd}
N -210 60 -190 60 {lab=vss}
N -300 -10 -300 150 {lab=CE}
N -300 150 -270 150 {lab=CE}
N -230 260 -210 260 {lab=vss}
N -330 -50 -300 -50 {lab=Dn}
N -330 -50 -330 190 {lab=Dn}
N -330 190 -270 190 {lab=Dn}
N -360 -10 -300 -10 {lab=CE}
N -70 -30 -70 20 {lab=#net1}
N -70 20 -50 20 {lab=#net1}
N 70 20 90 20 {lab=Dn}
N 90 -30 90 20 {lab=Dn}
N -30 -30 90 -30 {lab=Dn}
N -30 -90 -30 -30 {lab=Dn}
N -130 80 -130 100 {lab=vdd}
N -130 100 -110 100 {lab=vdd}
N -30 -90 -10 -90 {lab=Dn}
N 10 120 10 140 {lab=CLR}
N 10 140 30 140 {lab=CLR}
N 70 80 90 80 {lab=vss}
N -360 60 -210 60 {lab=vss}
N -300 -140 -300 -50 {lab=Dn}
N -360 -120 -210 -120 {lab=vdd}
N -90 50 -50 50 {lab=CLK}
N -90 -60 -90 50 {lab=CLK}
N -90 -60 -10 -60 {lab=CLK}
N -300 -140 -30 -140 {lab=Dn}
N -30 -140 -30 -90 {lab=Dn}
N -260 -30 -260 -10 {lab=CE}
N -300 -10 -260 -10 {lab=CE}
N -260 -70 -260 -50 {lab=Dn}
N -300 -50 -260 -50 {lab=Dn}
N -140 -50 -110 -50 {lab=#net1}
N -110 -50 -110 -30 {lab=#net1}
N -110 -30 -70 -30 {lab=#net1}
N -210 0 -210 60 {lab=vss}
N -230 230 -230 260 {lab=vss}
N -230 80 -230 110 {lab=vdd}
N -130 80 -50 80 {lab=vdd}
N -230 80 -130 80 {lab=vdd}
N -170 170 -130 170 {lab=Sout}
C {blocks/dff/schematic/dff.sym} 10 50 0 0 {name=x1}
C {blocks/xorgate/schematic/xorgate.sym} -300 30 0 0 {name=x2}
C {blocks/andgate/schematic/andgate.sym} -290 250 0 0 {name=x3}
C {lab_wire.sym} -190 60 0 1 {name=p7 sig_type=std_logic lab=vss
}
C {lab_wire.sym} -210 260 0 1 {name=p1 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 90 80 0 1 {name=p2 sig_type=std_logic lab=vss
}
C {lab_wire.sym} -110 100 2 0 {name=p3 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} -190 -120 2 0 {name=p4 sig_type=std_logic lab=vdd
}
C {iopin.sym} -10 -90 0 0 {name=p5 lab=Dn}
C {iopin.sym} -10 -60 0 0 {name=p6 lab=CLK}
C {iopin.sym} 30 140 0 0 {name=p8 lab=CLR}
C {iopin.sym} -130 170 0 0 {name=p9 lab=Sout}
C {iopin.sym} -360 60 0 1 {name=p10 lab=vss}
C {iopin.sym} -360 -10 0 1 {name=p11 lab=CE}
C {iopin.sym} -360 -120 0 1 {name=p12 lab=vdd}
