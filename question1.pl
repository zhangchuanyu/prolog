/** question 1*/
#zhangchuanyuzhang 100988193
male(son).
male(fath).
male(gfth).
male(ance).
male(uncle1).
female(daug).
female(moth).
female(gmoth).
female(ances).
female(aunt1).
father(fath,son).
father(gfth,fath).
mother(moth,son).
mother(moth,daug).
father(gfath,fath).
father(gfath,uncle1).
mother(gmoth,uncle1).
father(gfath,moth).
father(gfath,aunt1).
mother(gmoth,aunt1).
father(gmoth,moth).
mother(gmoth,fath).
father(ance,gfath).
father(ance,gmoth).
mother(ances,gfath).
mother(ances,gmoth).

parent(X,Y):-mother(X,Y).
parent(X,Y):-father(X,Y).
different(X,Y):- X\=Y.
is_mother(X):- mother(X,Y), female(X).
is_father(X):- father(X,Y).
sister(X,Y):- different(X,Y),female(X),(parent(Z,X),parent(Z,Y)).
brother(X,Y):- different(X,Y),male(X),(parent(Z,X),parent(Z,Y)).
aunt(X,Y):-different(X,Y),female(X),(parent(Z,Y), sister(X,Z)).
uncle(X,Y):-different(X,Y),male(X),(parent(Z,Y), brother(X,Z)).
grandfather(X,Y):-different(X,Y),male(X),(parent(Z,Y), parent(X,Z)).
grandmother(X,Y):-different(X,Y),female(X),(parent(Z,Y), parent(X,Z)).
ancestor(X,Y):-different(X,Y),parent(X,Y).
ancestor(X,Y):-different(X,Y),parent(Z,Y),ancestor(X,Z).
# test case:
# is_mother(moth).
# result: true.
# is_father(fath).
# result:true.
# parent(moth,daug).
# result:true.
# parent(fath,son).
# result:true.
# sister(daug,son).
# result:true.
# brother(son,daug).
# result:true.
# aunt(aunt1,son).
# result:true.
# uncle(uncle1,son).
# result:true.
# grandfather(gfath,son).
# result:true.
# grandmother(gmoth,daug).
# result:true.
# ancestor(ance,fath).
# result:true.
# ancestor(ances,moth).
# result:true.




