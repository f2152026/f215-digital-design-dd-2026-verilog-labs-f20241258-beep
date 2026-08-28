// rca64.v
// A plain 64-bit ripple-carry adder, chaining 64 FA_Gate instances (the
// delay-annotated version carried forward from Task 2).
//
// TODO: instantiate 64 FA_Gate modules, chained exactly like Task 2/3's
// 4-bit ripple adder, just 64 bits wide. This is very repetitive -- a
// generate-for loop is a reasonable way to write this one, since every
// stage is structurally identical, e.g.:
//
//   wire [64:0] c;
//   assign c[0] = cin;
//   genvar i;
//   generate
//     for (i = 0; i < 64; i = i + 1) begin : gen_fa
//       FA_Gate FA (.a(a[i]), .b(b[i]), .cin(c[i]), .sum(sum[i]), .cout(c[i+1]));
//     end
//   endgenerate
//   assign cout = c[64];

module rca64(

  input  [63:0] a,
  input  [63:0] b,
  input         cin,
  output [63:0] sum,
  output        cout

);

  wire [63:0] c;

  FA_Gate FA0  (.a(a[0]),  .b(b[0]),  .cin(cin),  .sum(sum[0]),  .cout(c[0]));
  FA_Gate FA1  (.a(a[1]),  .b(b[1]),  .cin(c[0]), .sum(sum[1]),  .cout(c[1]));
  FA_Gate FA2  (.a(a[2]),  .b(b[2]),  .cin(c[1]), .sum(sum[2]),  .cout(c[2]));
  FA_Gate FA3  (.a(a[3]),  .b(b[3]),  .cin(c[2]), .sum(sum[3]),  .cout(c[3]));
  FA_Gate FA4  (.a(a[4]),  .b(b[4]),  .cin(c[3]), .sum(sum[4]),  .cout(c[4]));
  FA_Gate FA5  (.a(a[5]),  .b(b[5]),  .cin(c[4]), .sum(sum[5]),  .cout(c[5]));
  FA_Gate FA6  (.a(a[6]),  .b(b[6]),  .cin(c[5]), .sum(sum[6]),  .cout(c[6]));
  FA_Gate FA7  (.a(a[7]),  .b(b[7]),  .cin(c[6]), .sum(sum[7]),  .cout(c[7]));
  FA_Gate FA8  (.a(a[8]),  .b(b[8]),  .cin(c[7]), .sum(sum[8]),  .cout(c[8]));
  FA_Gate FA9  (.a(a[9]),  .b(b[9]),  .cin(c[8]), .sum(sum[9]),  .cout(c[9]));
  FA_Gate FA10 (.a(a[10]), .b(b[10]), .cin(c[9]), .sum(sum[10]), .cout(c[10]));
  FA_Gate FA11 (.a(a[11]), .b(b[11]), .cin(c[10]), .sum(sum[11]), .cout(c[11]));
  FA_Gate FA12 (.a(a[12]), .b(b[12]), .cin(c[11]), .sum(sum[12]), .cout(c[12]));
  FA_Gate FA13 (.a(a[13]), .b(b[13]), .cin(c[12]), .sum(sum[13]), .cout(c[13]));
  FA_Gate FA14 (.a(a[14]), .b(b[14]), .cin(c[13]), .sum(sum[14]), .cout(c[14]));
  FA_Gate FA15 (.a(a[15]), .b(b[15]), .cin(c[14]), .sum(sum[15]), .cout(c[15]));
  FA_Gate FA16 (.a(a[16]), .b(b[16]), .cin(c[15]), .sum(sum[16]), .cout(c[16]));
  FA_Gate FA17 (.a(a[17]), .b(b[17]), .cin(c[16]), .sum(sum[17]), .cout(c[17]));
  FA_Gate FA18 (.a(a[18]), .b(b[18]), .cin(c[17]), .sum(sum[18]), .cout(c[18]));
  FA_Gate FA19 (.a(a[19]), .b(b[19]), .cin(c[18]), .sum(sum[19]), .cout(c[19]));
  FA_Gate FA20 (.a(a[20]), .b(b[20]), .cin(c[19]), .sum(sum[20]), .cout(c[20]));
  FA_Gate FA21 (.a(a[21]), .b(b[21]), .cin(c[20]), .sum(sum[21]), .cout(c[21]));
  FA_Gate FA22 (.a(a[22]), .b(b[22]), .cin(c[21]), .sum(sum[22]), .cout(c[22]));
  FA_Gate FA23 (.a(a[23]), .b(b[23]), .cin(c[22]), .sum(sum[23]), .cout(c[23]));
  FA_Gate FA24 (.a(a[24]), .b(b[24]), .cin(c[23]), .sum(sum[24]), .cout(c[24]));
  FA_Gate FA25 (.a(a[25]), .b(b[25]), .cin(c[24]), .sum(sum[25]), .cout(c[25]));
  FA_Gate FA26 (.a(a[26]), .b(b[26]), .cin(c[25]), .sum(sum[26]), .cout(c[26]));
  FA_Gate FA27 (.a(a[27]), .b(b[27]), .cin(c[26]), .sum(sum[27]), .cout(c[27]));
  FA_Gate FA28 (.a(a[28]), .b(b[28]), .cin(c[27]), .sum(sum[28]), .cout(c[28]));
  FA_Gate FA29 (.a(a[29]), .b(b[29]), .cin(c[28]), .sum(sum[29]), .cout(c[29]));
  FA_Gate FA30 (.a(a[30]), .b(b[30]), .cin(c[29]), .sum(sum[30]), .cout(c[30]));
  FA_Gate FA31 (.a(a[31]), .b(b[31]), .cin(c[30]), .sum(sum[31]), .cout(c[31]));
  FA_Gate FA32 (.a(a[32]), .b(b[32]), .cin(c[31]), .sum(sum[32]), .cout(c[32]));
  FA_Gate FA33 (.a(a[33]), .b(b[33]), .cin(c[32]), .sum(sum[33]), .cout(c[33]));
  FA_Gate FA34 (.a(a[34]), .b(b[34]), .cin(c[33]), .sum(sum[34]), .cout(c[34]));
  FA_Gate FA35 (.a(a[35]), .b(b[35]), .cin(c[34]), .sum(sum[35]), .cout(c[35]));
  FA_Gate FA36 (.a(a[36]), .b(b[36]), .cin(c[35]), .sum(sum[36]), .cout(c[36]));
  FA_Gate FA37 (.a(a[37]), .b(b[37]), .cin(c[36]), .sum(sum[37]), .cout(c[37]));
  FA_Gate FA38 (.a(a[38]), .b(b[38]), .cin(c[37]), .sum(sum[38]), .cout(c[38]));
  FA_Gate FA39 (.a(a[39]), .b(b[39]), .cin(c[38]), .sum(sum[39]), .cout(c[39]));
  FA_Gate FA40 (.a(a[40]), .b(b[40]), .cin(c[39]), .sum(sum[40]), .cout(c[40]));
  FA_Gate FA41 (.a(a[41]), .b(b[41]), .cin(c[40]), .sum(sum[41]), .cout(c[41]));
  FA_Gate FA42 (.a(a[42]), .b(b[42]), .cin(c[41]), .sum(sum[42]), .cout(c[42]));
  FA_Gate FA43 (.a(a[43]), .b(b[43]), .cin(c[42]), .sum(sum[43]), .cout(c[43]));
  FA_Gate FA44 (.a(a[44]), .b(b[44]), .cin(c[43]), .sum(sum[44]), .cout(c[44]));
  FA_Gate FA45 (.a(a[45]), .b(b[45]), .cin(c[44]), .sum(sum[45]), .cout(c[45]));
  FA_Gate FA46 (.a(a[46]), .b(b[46]), .cin(c[45]), .sum(sum[46]), .cout(c[46]));
  FA_Gate FA47 (.a(a[47]), .b(b[47]), .cin(c[46]), .sum(sum[47]), .cout(c[47]));
  FA_Gate FA48 (.a(a[48]), .b(b[48]), .cin(c[47]), .sum(sum[48]), .cout(c[48]));
  FA_Gate FA49 (.a(a[49]), .b(b[49]), .cin(c[48]), .sum(sum[49]), .cout(c[49]));
  FA_Gate FA50 (.a(a[50]), .b(b[50]), .cin(c[49]), .sum(sum[50]), .cout(c[50]));
  FA_Gate FA51 (.a(a[51]), .b(b[51]), .cin(c[50]), .sum(sum[51]), .cout(c[51]));
  FA_Gate FA52 (.a(a[52]), .b(b[52]), .cin(c[51]), .sum(sum[52]), .cout(c[52]));
  FA_Gate FA53 (.a(a[53]), .b(b[53]), .cin(c[52]), .sum(sum[53]), .cout(c[53]));
  FA_Gate FA54 (.a(a[54]), .b(b[54]), .cin(c[53]), .sum(sum[54]), .cout(c[54]));
  FA_Gate FA55 (.a(a[55]), .b(b[55]), .cin(c[54]), .sum(sum[55]), .cout(c[55]));
  FA_Gate FA56 (.a(a[56]), .b(b[56]), .cin(c[55]), .sum(sum[56]), .cout(c[56]));
  FA_Gate FA57 (.a(a[57]), .b(b[57]), .cin(c[56]), .sum(sum[57]), .cout(c[57]));
  FA_Gate FA58 (.a(a[58]), .b(b[58]), .cin(c[57]), .sum(sum[58]), .cout(c[58]));
  FA_Gate FA59 (.a(a[59]), .b(b[59]), .cin(c[58]), .sum(sum[59]), .cout(c[59]));
  FA_Gate FA60 (.a(a[60]), .b(b[60]), .cin(c[59]), .sum(sum[60]), .cout(c[60]));
  FA_Gate FA61 (.a(a[61]), .b(b[61]), .cin(c[60]), .sum(sum[61]), .cout(c[61]));
  FA_Gate FA62 (.a(a[62]), .b(b[62]), .cin(c[61]), .sum(sum[62]), .cout(c[62]));
  FA_Gate FA63 (.a(a[63]), .b(b[63]), .cin(c[62]), .sum(sum[63]), .cout(cout));

endmodule
