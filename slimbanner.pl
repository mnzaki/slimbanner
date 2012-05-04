f("22-METsaysTHANKS!").

set(N,X):-
    X1 is X >> N,
    1 is X1 /\ 1.

d(MW,MW,H,MH,WR,HR,B,X,F,V,['\n'|R]):-!,
  H1 is H+1,
  d(0,MW,H1,MH,WR,HR,B,X,F,V,R).
d(_,_,MH,MH,_,_,_,_,_,_,[]):-!.
d(W, MW, H, MH, WR, HR, B, X, [F|Fs], V, [C|R]):-
  P is B - (H*HR//MH*WR+W*WR//MW),
  W1 is W+1,
  (set(P,X) -> V1=1;V1=0),
  (V1 xor V =:= 1 -> C = F, d(W1,MW,H,MH,WR,HR,B,X,Fs,V,R);
                 C = ' ', d(W1,MW,H,MH,WR,HR,B,X,[F|Fs],V,R)).

r(0,_,[]):-!.
r(N, A, [A|Fs]):-
  N1 is N-1,
  r(N1, A, Fs).

s_(W, H, DW, DH, V, X):-
  f(A), length(A,L),
  N is W*H//L + 1,
  r(500,'\n',Z1), flatten(Z1,Z),
  r(N, A, F1),flatten(F1,F),
  B is DW*DH-1,
  d(0, W, 0, H,DW,DH,B,X,F,V,R),
  writef("%s%s\n",[Z,R]),sleep(2),
  (V=1->V1=0;V1=1),
  s_(W,H,DW,DH,V1,X).

slimbanner:-
  s_(100,40,25,10,0,0x40000003c30003ed8003060ff1836ffcf9b7fe3edb33036d999fb6ccc000000).
