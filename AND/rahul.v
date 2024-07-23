module cmos_inv(vdd,gnd,in,out);
input vdd, gnd;
input in;
output out;

pmos p0(vdd,out,in);
nmos n0(out,gnd,in);
endmodule