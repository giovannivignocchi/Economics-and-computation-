#Sequence for player1 and player2.
set Q1;
set Q2;
#Information set for player1 and player2.
set H1;
set H2;

param F1{H1,Q1};
param f1{H1};
param U1{Q1,Q2};
param F2{H2,Q2};
param f2{H2};

var r1{Q1} >= 0;
var v2{H2};

maximize objective:
	sum{h in H2} f2[h] * v2[h];

subject to constraint1{q2 in Q2}:
	sum{h in H2} F2[h,q2] * v2[h] <= sum{q1 in Q1} U1[q1,q2] * r1[q1];

subject to constraint2{h in H1}:
	sum{q in Q1} F1[h,q] * r1[q] = f1[h];
	
	