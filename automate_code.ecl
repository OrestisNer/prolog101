%Add Command
command(add_r1,state(acc(X),reg1(Y),R2,R3),state(acc(X+Y),reg1(Y),R2,R3)).
command(add_r2,state(acc(X),R1,reg2(Y),R3),state(acc(X+Y),R1,reg2(Y),R3)).
command(add_r3,state(acc(X),R1,R2,reg3(Y)),state(acc(X+Y),R1,R2,reg3(Y))).

%Substract Command
command(subtract_r1,state(acc(X),reg1(Y),R2,R3),state(acc(X-Y),reg1(Y),R2,R3)).
command(subtract_r2,state(acc(X),R1,reg2(Y),R3),state(acc(X-Y),R1,reg2(Y),R3)).
command(subtract_r3,state(acc(X),R1,R2,reg3(Y)),state(acc(X-Y),R1,R2,reg3(Y))).

%Store Command
command(store_r1,state(acc(X),reg1(_),R2,R3),state(acc(X),reg1(X),R2,R3)).
command(store_r2,state(acc(X),R1,reg2(_),R3),state(acc(X),R1,reg2(X),R3)).
command(store_r3,state(acc(X),R1,R2,reg3(_)),state(acc(X),R1,R2,reg3(X))).

%Load Command
command(load_r1,state(acc(_),reg1(Y),R2,R3),state(acc(Y),reg1(Y),R2,R3)).
command(load_r2,state(acc(_),R1,reg2(Y),R3),state(acc(Y),R1,reg2(Y),R3)).
command(load_r3,state(acc(_),R1,R2,reg3(Y)),state(acc(Y),R1,R2,reg3(Y))).


%findOps/3
findOps(Command1,Command2,Command3):-
  command(Command1,state(acc(c1),reg1(0),reg2(c2),reg3(c3)),R1),
  command(Command2,R1,R2),
  command(Command3,R2,state(acc(c1-c2+c3),reg1(c1-c2+c3),reg2(c2),reg3(c3))).
