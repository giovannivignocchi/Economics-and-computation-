set I;
set J;

#We use only the utility matrix of the first player, since we only need a unique matrix to copute the maxmin value.
param U{I,J};

var s{I} >= 0;
var v;

maximize objective: v;

subject to constraint{j in J}:
	v - sum{i in I} U[i,j]*s[i] <= 0;

subject to sumToOne:
	sum{i in I} s[i] = 1;
