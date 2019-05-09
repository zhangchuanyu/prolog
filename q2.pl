#question2 zhangchuanyu 100988193
actor(jonny, depp, gender(male)).
actor(bruce, willis, gender(male)).
actor(glenn, close, gender(female)).
actor(orlando, bloom, gender(male)).
actor(jennifer, lawrence, gender(female)).
actor(sean, bean, gender(male)).
actor(angelina, jolie, gender(female)).
actor(keira, knightley, gender(female)).
actor(benedict, cumberbatch, gender(male)).
actor(james,mcavoy, gender(male)).
actor(robin, williams, gender(male)).
actor(emilia, clarke, gender(female)).
actor(ryan, reynolds, gender(male)).
actor(chris, pratt, gender(male)).
actor(karen, gillan, gender(female)).
movie(year(2003), title([pirates,of,the,carribean]), cast([actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)])).
movie(year(2014), title([guardians, of, the, galaxy]), cast([actor(chris, pratt), actor(karen,gillan) ])).
movie(year(1988), title([die,hard]), cast([actor(bruce, willis)])).
movie(year(2001), title([lord,of,the,rings]), cast([actor(orlando, bloom), actor(sean, bean)])).
movie(year(2016), title([xmen, apocalypse]), cast([actor(jennifer,lawrence), actor(james, mcavoy)])).
movie(year(2014), title([the,imitation,game]), cast([actor(benedict, cumberbatch), actor(keira, knightley)])).
movie(year(2012), title([the,hunger,games]), cast([actor(jennifer,lawrence)])).
movie(year(2016), title([deadpool]), cast([actor(ryan, reynolds)])).
# a) moive(year(X),Z,_), X<2010.
#X = 2003,
#Z = title([pirates, of, the, carribean]) ;
#X = 1988,
#Z = title([die, hard]) ;
#X = 2001,
#Z = title([lord, of, the, rings]) ;
# b) movie(_,title(X),_),(member(of,X),mbmber(the,Y)).
#X = [pirates, of, the, carribean],
#Y = [the|_6370] ;
#X = [pirates, of, the, carribean],
# Y = [_6368, the|_6376] ;
# X = [pirates, of, the, carribean],
# Y = [_68, _74, the|_82] ;
# X = [pirates, of, the, carribean],
# Y = [_68, _74, _80, the|_88] ;
# X = [pirates, of, the, carribean],
# Y = [_68, _74, _80, _86, the|_94] ;
# X = [pirates, of, the, carribean],
# Y = [_68, _74, _80, _86, _92, the|_100] ;
# X = [pirates, of, the, carribean],
# Y = [_68, _74, _80, _86, _92, _98, the|_106] ;
# X = [pirates, of, the, carribean],
# Y = [_68, _74, _80, _86, _92, _98, _104, the|_112] ;
# X = [pirates, of, the, carribean],
# Y = [_68, _74, _80, _86, _92, _98, _104, _110, the|...] ;
# X = [pirates, of, the, carribean],
# Y = [_68, _74, _80, _86, _92, _98, _104, _110, _116|...] ;
# c )movie(_,T,cast(X)),movie(_,Y,cast(Z)),T\=Y,member(actor(A,B),X),member(actor(A,B),Z).
# T = title([pirates, of, the, carribean]),
# X = [actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)],
# Y = title([lord, of, the, rings]),
# Z = [actor(orlando, bloom), actor(sean, bean)],
# A = orlando,
# B = bloom ;
# T = title([pirates, of, the, carribean]),
# X = [actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)],
# Y = title([the, imitation, game]),
# Z = [actor(benedict, cumberbatch), actor(keira, knightley)],
# A = keira,
# B = knightley ;
# T = title([lord, of, the, rings]),
# X = [actor(orlando, bloom), actor(sean, bean)],
# Y = title([pirates, of, the, carribean]),
# Z = [actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)],
# A = orlando,
# B = bloom ;
# T = title([xmen, apocalypse]),
# X = [actor(jennifer, lawrence), actor(james, mcavoy)],
# Y = title([the, hunger, games]),
# Z = [actor(jennifer, lawrence)],
# A = jennifer,
# B = lawrence ;
# T = title([the, imitation, game]),
# X = [actor(benedict, cumberbatch), actor(keira, knightley)],
# Y = title([pirates, of, the, carribean]),
# Z = [actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)],
# A = keira,
# B = knightley ;
# T = title([the, hunger, games]),
# X = [actor(jennifer, lawrence)],
# Y = title([xmen, apocalypse]),
# Z = [actor(jennifer, lawrence), actor(james, mcavoy)],
# A = jennifer,
# B = lawrence ;
# d)movie(_,T,cast(C)),member(actor(chris,pratt),C).
# T = title([guardians, of, the, galaxy]),
# C = [actor(chris, pratt), actor(karen, gillan)] ;
#e)actor(X,Y,gender(female)).
# X = glenn,
# Y = close ;
# X = jennifer,
# Y = lawrence ;
# X = angelina,
# Y = jolie ;
# X = keira,
# Y = knightley ;
# X = emilia,
# Y = clarke ;
# X = karen,
# Y = gillan.

#f)movie(_,T,cast(C)),member(actor(sean,bean),C).
# T = title([lord, of, the, rings]),
# C = [actor(orlando, bloom), actor(sean, bean)] ;
#g) movie(_,T,cast(C)), movie(_,T1,cast(C1)), T \= T1, intersection(C,C1,I),I \= [].
# T = title([pirates, of, the, carribean]),
# C = [actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)],
# T1 = title([lord, of, the, rings]),
# C1 = [actor(orlando, bloom), actor(sean, bean)],
# I = [actor(orlando, bloom)] nnn;
# T = title([pirates, of, the, carribean]),
# C = [actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)],
# T1 = title([the, imitation, game]),
# C1 = [actor(benedict, cumberbatch), actor(keira, knightley)],
# I = [actor(keira, knightley)] ;
# T = title([lord, of, the, rings]),
# C = [actor(orlando, bloom), actor(sean, bean)],
# T1 = title([pirates, of, the, carribean]),
# C1 = [actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)],
# I = [actor(orlando, bloom)] ;
# T = title([xmen, apocalypse]),
# C = [actor(jennifer, lawrence), actor(james, mcavoy)],
# T1 = title([the, hunger, games]),
# C1 = I, I = [actor(jennifer, lawrence)] ;
# T = title([the, imitation, game]),
# C = [actor(benedict, cumberbatch), actor(keira, knightley)],
# T1 = title([pirates, of, the, carribean]),
# C1 = [actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)],
# I = [actor(keira, knightley)] ;
# T = title([the, hunger, games]),
# C = I, I = [actor(jennifer, lawrence)],
# T1 = title([xmen, apocalypse]),
# C1 = [actor(jennifer, lawrence), actor(james, mcavoy)] ;
# h)movie(year(X),T1,_), \+ (movie(year(Y),T2,_), T2 \= T1, Y < X).
# X = 1988,
# T1 = title([die, hard]) ;
# i) actor(FName,LName,_),forall(movie(_,_,cast(Cast)),not(member(actor(FName,LName),Cast))).
# FName = glenn,
# LName = close ;