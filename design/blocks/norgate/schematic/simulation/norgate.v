// sch_path: /home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/norgate/schematic/norgate.sch
module norgate
(
  output wire VOUT,
  inout wire VDD,
  inout wire VSS,
  input wire VA,
  input wire VB
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
