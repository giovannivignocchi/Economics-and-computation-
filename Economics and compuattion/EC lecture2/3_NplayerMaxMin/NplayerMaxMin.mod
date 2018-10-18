set I;
set J;
set K;

param U{I,J,K};

#Queste sono le strategie dei player del team .
var s1{I} >= 0;
var s2{J} >= 0;
var v;

maximize objective: v;

subject to constraint1{k in K}:
	v - sum{i in I, j in J} U[i,k,j] * s1[i] * s2[j] <= 0;
	
subject to sumToOneFirst:
	sum{i in I} s1[i]= 1;

subject to sumToOneSecond:
	sum{j in J} s2[j]= 1;