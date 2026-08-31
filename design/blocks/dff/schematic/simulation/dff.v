// sch_path: /home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/dff/schematic/dff.sch
module dff
(
  inout wire CLK,
  inout wire vdd,
  inout wire vss,
  inout wire CLR,
  inout wire D,
  inout wire Qb,
  inout wire Q
);
wire clk_neg ;
wire clk_pos ;
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;

inverter
x7 ( 
 .VDD( vdd ),
 .VOUT( clk_neg ),
 .VIN( CLK ),
 .VSS( vss )
);


inverter
x10 ( 
 .VDD( vdd ),
 .VOUT( clk_pos ),
 .VIN( clk_neg ),
 .VSS( vss )
);


transmissiongate
x1 ( 
 .VCTRLN( clk_pos ),
 .VSS( vss ),
 .VOUT( net1 ),
 .VIN( net2 ),
 .VDD( vdd ),
 .VCTRLP( clk_neg )
);


transmissiongate
x2 ( 
 .VCTRLN( clk_neg ),
 .VSS( vdd ),
 .VOUT( net2 ),
 .VIN( D ),
 .VDD( vdd ),
 .VCTRLP( clk_pos )
);


norgate
x3 ( 
 .VDD( vss ),
 .VOUT( net1 ),
 .VA( CLR ),
 .VB( net3 ),
 .VSS( vdd )
);


inverter
x4 ( 
 .VDD( vdd ),
 .VOUT( net3 ),
 .VIN( net2 ),
 .VSS( vss )
);


transmissiongate
x5 ( 
 .VCTRLN( clk_pos ),
 .VSS( vss ),
 .VOUT( net4 ),
 .VIN( net3 ),
 .VDD( vdd ),
 .VCTRLP( clk_neg )
);


transmissiongate
x6 ( 
 .VCTRLN( clk_neg ),
 .VSS( net5 ),
 .VOUT( Qb ),
 .VIN( net4 ),
 .VDD( net6 ),
 .VCTRLP( clk_pos )
);


inverter
x8 ( 
 .VDD( vdd ),
 .VOUT( Qb ),
 .VIN( Q ),
 .VSS( vss )
);


norgate
x9 ( 
 .VDD( vss ),
 .VOUT( Q ),
 .VA( net4 ),
 .VB( CLR ),
 .VSS( vss )
);

endmodule

// expanding   symbol:  blocks/inverter/schematic/inverter.sym # of pins=4
// sym_path: /home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/inverter/schematic/inverter.sym
// sch_path: /home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/inverter/schematic/inverter.sch
module inverter
(
  inout wire VDD,
  output wire VOUT,
  input wire VIN,
  inout wire VSS
);

sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( 3e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( VOUT ),
 .G( VIN ),
 .S( VDD ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( 1.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( VOUT ),
 .G( VIN ),
 .S( VSS ),
 .B( VSS )
);

endmodule

// expanding   symbol:  blocks/transmissiongate/schematic/transmissiongate.sym # of pins=6
// sym_path: /home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/transmissiongate/schematic/transmissiongate.sym
// sch_path: /home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/transmissiongate/schematic/transmissiongate.sch
module transmissiongate
(
  inout wire VCTRLN,
  inout wire VSS,
  output wire VOUT,
  input wire VIN,
  inout wire VDD,
  inout wire VCTRLP
);

sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( 1.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( VOUT ),
 .G( VCTRLN ),
 .S( VIN ),
 .B( VSS )
);


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( 1.5e-07 ) ,
.ng ( 1 ) ,
.m ( 2 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( VOUT ),
 .G( VCTRLP ),
 .S( VIN ),
 .B( VDD )
);

endmodule

// expanding   symbol:  blocks/norgate/schematic/norgate.sym # of pins=5
// sym_path: /home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/norgate/schematic/norgate.sym
// sch_path: /home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/norgate/schematic/norgate.sch
module norgate
(
  inout wire VDD,
  output wire VOUT,
  input wire VA,
  input wire VB,
  inout wire VSS
);
wire net1 ;


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( 1.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( VOUT ),
 .G( VA ),
 .S( VSS ),
 .B( VSS )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( 1.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( VOUT ),
 .G( VB ),
 .S( VSS ),
 .B( VSS )
);


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( 1.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( VOUT ),
 .G( VB ),
 .S( net1 ),
 .B( VDD )
);


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( 1.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( net1 ),
 .G( VA ),
 .S( VDD ),
 .B( VDD )
);

endmodule
