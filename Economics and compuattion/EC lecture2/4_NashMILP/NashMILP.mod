set I;

param U1{I,I};
param U2{I,I};

param M1;
param M2;

var s1{I} >= 0;
var s2{I} >= 0;
var v1;
var v2;
var b1{I}, binary;
var b2{I}, binary;

maximize objective: v1 + v2;

subject to constraints1_P1{i in I}:
	v1 - sum{j in I} U1[i,j] * s2[j] - M1 * (1 - b1[i]) <= 0;
subject to constraints1_P2{j in I}:
	v2 - sum{i in I} U2[i,j] * s1[i] - M2 * (1 - b2[j]) <= 0;

subject to constraint2_P1{i in I}:
	v1 - sum{j in I} U1[i,j] * s2[j] >= 0;
subject to constraint2_P2{j in I}:
	v2 - sum{i in I} U2[i,j] * s1[i] >= 0;

subject to strategyConstraint1:
	sum{i in I} s1[i] = 1;
subject to strategyConstraint2:
	sum{i in I} s2[i] = 1;
	
subject to activation1{i in I}:
	s1[i] <= b1[i];
subject to activation2{i in I}:
	s2[i] <= b2[i];


