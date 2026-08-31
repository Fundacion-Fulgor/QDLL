v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -240 360 -210 360 {lab=vdd}
N -240 500 -210 500 {lab=vss}
N -150 430 -120 430 {lab=clk_neg}
N -290 430 -260 430 {lab=CLK}
N -120 320 -40 320 {lab=clk_neg}
N -120 320 -120 430 {lab=clk_neg}
N -120 430 -90 430 {lab=clk_neg}
N -210 360 -40 360 {lab=vdd}
N -210 500 -40 500 {lab=vss}
N 20 430 50 430 {lab=clk_pos}
N -210 360 -210 390 {lab=vdd}
N -210 470 -210 500 {lab=vss}
N -40 470 -40 500 {lab=vss}
N -40 360 -40 390 {lab=vdd}
N -240 270 -240 290 {lab=vss}
N -200 270 -200 320 {lab=clk_neg}
N -200 320 -120 320 {lab=clk_neg}
N -200 130 -200 150 {lab=clk_pos}
N -240 130 -240 150 {lab=vdd}
N -0 140 0 160 {lab=vdd}
N -0 260 0 290 {lab=vss}
N 60 230 110 230 {lab=CLR}
N 260 40 260 70 {lab=vss}
N 260 -60 260 -40 {lab=vdd}
N -230 -0 -190 0 {lab=D}
N -90 60 -90 90 {lab=clk_pos}
N -90 -90 -90 -60 {lab=clk_neg}
N -130 60 -130 80 {lab=vdd}
N -130 -80 -130 -60 {lab=vdd}
N -100 210 -70 210 {lab=#net1}
N 110 0 210 0 {lab=#net2}
N 110 0 110 100 {lab=#net2}
N 10 -0 110 0 {lab=#net2}
N -350 100 110 100 {lab=#net2}
N -350 100 -350 210 {lab=#net2}
N -350 210 -300 210 {lab=#net2}
N 60 190 330 190 {lab=#net3}
N 330 0 330 190 {lab=#net3}
N 330 -0 380 -0 {lab=#net3}
N 440 -80 440 -60 {lab=vdd}
N 440 60 440 80 {lab=vss}
N 480 60 480 80 {lab=clk_neg}
N 480 -80 480 -60 {lab=clk_pos}
N 580 0 620 0 {lab=#net4}
N 620 0 620 190 {lab=#net4}
N 360 190 620 190 {lab=#net4}
N 360 190 360 300 {lab=#net4}
N 360 300 400 300 {lab=#net4}
N 500 360 500 390 {lab=clk_pos}
N 500 210 500 240 {lab=clk_neg}
N 630 300 660 300 {lab=Qb}
N 730 340 730 370 {lab=vss}
N 730 230 730 260 {lab=vdd}
N 630 300 630 350 {lab=Qb}
N 600 300 630 300 {lab=Qb}
N 670 40 690 40 {lab=CLR}
N 620 0 690 0 {lab=#net4}
N 750 70 750 90 {lab=vss}
N 750 -60 750 -30 {lab=vss}
N 820 20 820 300 {lab=Q}
N 780 300 820 300 {lab=Q}
C {blocks/inverter/schematic/inverter.sym} -300 570 0 0 {name=x7}
C {iopin.sym} -290 430 2 0 {name=p6 lab=CLK}
C {lab_pin.sym} -40 320 0 1 {name=p34 sig_type=std_logic lab=clk_neg}
C {iopin.sym} -240 360 2 0 {name=p4 lab=vdd}
C {iopin.sym} -240 500 2 0 {name=p5 lab=vss}
C {blocks/inverter/schematic/inverter.sym} -130 570 0 0 {name=x10}
C {lab_pin.sym} 50 430 2 0 {name=p16 sig_type=std_logic lab=clk_pos}
C {blocks/transmissiongate/schematic/transmissiongate.sym} -340 370 0 0 {name=x1}
C {lab_pin.sym} -240 290 0 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_pin.sym} -200 130 2 0 {name=p2 sig_type=std_logic lab=clk_pos
}
C {lab_pin.sym} -240 130 2 0 {name=p3 sig_type=std_logic lab=vdd}
C {blocks/transmissiongate/schematic/transmissiongate.sym} -230 160 0 0 {name=x2}
C {blocks/norgate/schematic/norgate.sym} 80 90 2 0 {name=x3}
C {lab_pin.sym} 0 140 2 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 0 290 2 0 {name=p8 sig_type=std_logic lab=vss}
C {iopin.sym} 110 230 0 0 {name=p9 lab=CLR}
C {blocks/inverter/schematic/inverter.sym} 170 140 0 0 {name=x4}
C {lab_pin.sym} 260 70 0 0 {name=p10 sig_type=std_logic lab=vss}
C {lab_pin.sym} 260 -60 2 0 {name=p11 sig_type=std_logic lab=vdd}
C {iopin.sym} -230 0 2 0 {name=p12 lab=D}
C {lab_pin.sym} -90 -90 0 1 {name=p13 sig_type=std_logic lab=clk_neg}
C {lab_pin.sym} -90 90 2 0 {name=p14 sig_type=std_logic lab=clk_pos}
C {lab_pin.sym} -130 -80 2 0 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -130 80 2 0 {name=p17 sig_type=std_logic lab=vdd}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 340 160 0 0 {name=x5}
C {lab_pin.sym} 440 -80 0 0 {name=p18 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 440 80 0 0 {name=p19 sig_type=std_logic lab=vss}
C {lab_pin.sym} 480 -80 2 0 {name=p20 sig_type=std_logic lab=clk_pos
}
C {lab_pin.sym} 480 80 0 1 {name=p21 sig_type=std_logic lab=clk_neg}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 360 460 0 0 {name=x6}
C {lab_pin.sym} 500 210 0 1 {name=p22 sig_type=std_logic lab=clk_neg}
C {lab_pin.sym} 500 390 2 0 {name=p23 sig_type=std_logic lab=clk_pos}
C {blocks/inverter/schematic/inverter.sym} 820 440 0 1 {name=x8}
C {lab_pin.sym} 730 230 2 0 {name=p24 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 730 370 2 0 {name=p25 sig_type=std_logic lab=vss}
C {iopin.sym} 630 350 0 0 {name=p26 lab=Qb}
C {blocks/norgate/schematic/norgate.sym} 670 140 0 0 {name=x9}
C {lab_pin.sym} 670 40 0 0 {name=p27 sig_type=std_logic lab=CLR}
C {lab_pin.sym} 750 90 0 0 {name=p28 sig_type=std_logic lab=vss}
C {lab_pin.sym} 750 -60 0 0 {name=p29 sig_type=std_logic lab=vss}
C {iopin.sym} 820 300 0 0 {name=p30 lab=Q}
