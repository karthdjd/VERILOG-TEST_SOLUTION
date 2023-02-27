module dff(

	input d,

	input e,

	input clock,

	output q);
         wire o;



mux mux1(d,q,e,o);

ff ff1(o,clock,q);



endmodule





module mux(

	input d,

	input q,

	input e,

	output out);



assign out = e ? q : d;

endmodule





module ff(

	input d,

	input clock,

	output q);

reg q;



always @(posedge clock)

begin

	q<= d;

end

endmodule
