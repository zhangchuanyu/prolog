#question4
#zhangchuanyuzhang 100988193
myAppend([],L,L). 
myAppend([H|T],L1,[H|L2]):-myAppend(T,L1,L2).

myfirst(X,[X|_]).
myLast(X,L):-myAppend(_,X,L).
nextto(X,Y,L):-myAppend(_,[X,Y|_],L).
myReverse([],[]).
myReverse([H|T],L1):- myReverse(T,L2), myAppend(L2,[H],L1). 
#a) myAppend([a,b],[c,d],L).
#b) myfirst(X,[1,2,3]). 
#c)myLast(X,[how,are,you,today]).
#d)nextto(a,b, [a,b,c,d]).
#e)myReverse([a,b,c,d,e],L).