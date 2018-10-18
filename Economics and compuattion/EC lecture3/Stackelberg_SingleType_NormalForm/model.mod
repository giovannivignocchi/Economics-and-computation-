set A; # Set of actions that is common between leader and follower

param Ul{A,A};
param Uf{A,A};

param AF;
var sl{A} >= 0;

maximize objective: sum{al in A} Ul[al,AF] * sl[al];

subject to constraint{af in A}: sum{al in A} Uf[al,AF] * sl[al] >= sum{al in A} Uf[al,af] * sl[al];

subject to sumToOneLeader: sum{al in A} sl[al] = 1;