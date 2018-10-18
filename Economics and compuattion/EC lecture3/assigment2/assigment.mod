set Al; # Set of actions of the leader
set Af; # Set of actions of the follower


param Ul{Al,Af};
param Uf{Al,Af};

param AF;
var sl{Al} >= 0;

maximize objective: sum{al in Al} Ul[al,AF] * sl[al];

subject to constraint{af in Af}: sum{al in Al} Uf[al,AF] * sl[al] >= sum{al in Al} Uf[al,af] * sl[al];

subject to sumToOneLeader: sum{al in Al} sl[al] = 1;