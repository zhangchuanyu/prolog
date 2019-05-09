#question3
#zhangchuanyuzhang 100988193
lastEle(X,[H|T]):-length(T,L),L==0, X=H.
lastEle(X,[H|T]):-lastEle(X,T).


first(X,[H|T]):-X==H.
nextto(X,Y,[H|T]):-H==X,first(Y,T).
nextto(X,Y,[H|T]):-nextto(X,Y,T).
grademap([],[]).
grademap([H|T],[A|B]):-grademap(T,B),(H>=80,H<100->A='a';H>=70,H<80->A='b';H>=60,H<70->A='c';H>=50,H<60->A='d';H<50,A='f').

split([],_,[],[]).
split([H|T],Pivot,[A|B],[C|D]):-split(T,Pivot,B,D),(H=<Pivot->A=H,C=D;
                                H>Pivot->C=H,A=B).

# testcase:
# a) lastEle(X,[how,are,you,today]).
# b)?-gradeMap([0, 16, 49, 55, 63, 78, 92], R).
#R=[f,f,f,d,c,b,a]
#c)?-split([4,7,1,8,2,9,3],5, L1, L2).
 # L1 = [4,1,2,3]
 # L2 = [7, 8, 9].
 # ?-split([4,7,1,8,2,9,3],5, [4,1,2,3], [7, 8, 9]).
 # True.

# d)nextto(a,b, [c,a,b,d]).
# True.
# nextto(a,b, [c,a,d,b]).
# False
