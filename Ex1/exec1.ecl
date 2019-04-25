evaluate(i,1).
evaluate(v,5).
evaluate(x,10).
evaluate(l,50).
evaluate(c,100).
evaluate(d,500).
evaluate(m,1000).

exception(i,v).
exception(i,x).
exception(x,l).
exception(x,c).
exception(c,d).
exception(c,m).

roman([],0).
roman([H1],Res):-evaluate(H1,Res).

roman([H1,H2|T],Result):-
  not(exception(H1,H2)),!,
  roman([H2|T],Res),
  evaluate(H1,Val),
  Result is Res + Val.

roman([H1,H2|T],Result):-
  evaluate(H1,Val1),
  evaluate(H2,Val2),
  roman(T,Res),
  Result is Res + Val2 - Val1.
