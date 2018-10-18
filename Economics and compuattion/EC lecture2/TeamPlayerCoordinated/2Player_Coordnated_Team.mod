# Both player share the same set of actions.
set I;
set J;

#Utility matrix of player 1, since it is the unique matrix of utilities we need to copute maxmin
param U{I,J};

var s{J} >= 0;
var v;

maximize objective: v;

subject to constraint{i in I}:
	v - sum{j in J} U[i,j]*s[j] <= 0;

subject to sumToOne:
	sum{j in J} s[J] = 1;