%%%Φυλάδιο 1 , Άσκηση 1
%%%Logic Programming

%and_gate/3
and_gate(0,0,0).
and_gate(1,0,0).
and_gate(0,1,0).
and_gate(1,1,1).


%xor_gate/3
xor_gate(0,0,0).
xor_gate(0,1,1).
xor_gate(1,0,1).
xor_gate(1,1,0).

%or_gate/3
or_gate(0,0,0).
or_gate(0,1,1).
or_gate(1,0,1).
or_gate(1,1,1).

%half_adder/4
half_adder(X,Y,S,C):-
  xor_gate(X,Y,S),
  and_gate(X,Y,C).

%full_adder/5
full_adder(X,Y,C,S,CNEXT):-
  half_adder(X,Y,S1,C1),
  half_adder(C,S1,S,C2),
  or_gate(C1,C2,CNEXT).

%three_bit_adder
three_bit_adder(X0,Y0,X1,Y1,X2,Y2,C0,S0,S1,S2,C3):-
  full_adder(X0,Y0,C0,S0,C1),
  full_adder(X1,Y1,C1,S1,C2),
  full_adder(X2,Y2,C2,S2,C3).
