set I;
set J;

#Utility matrix of player 1, since it is the unique matrix of utilities we need to copute maxmin
param U{I,J};

var s{I} >= 0;
var v;

maximize objective: v;

subject to constraint{j in J}:
	v - sum{i in I} U[i,j]*s[i] <= 0;

subject to sumToOne:
	sum{i in I} s[i] = 1;