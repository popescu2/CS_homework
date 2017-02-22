config const N = 8;
var D = {0..(N-1), 0..(N-1)};
var a,b,c: [D] int;
var total: int = 0;
// initialize the array <a>, <b>, and <c>
a = + ([i in D] i(1) + i(2));
b = 1;
c = 0;
//writeln("a = \n", a);
c = + ( [(i,j) in D] + reduce([k in 0..(N-1)] a[i, k] * b[k,j]));
total = + reduce c;
//writeln("\nC = \n", c);
writeln("\n\nTotal = ", total, "(should be 3584)");
