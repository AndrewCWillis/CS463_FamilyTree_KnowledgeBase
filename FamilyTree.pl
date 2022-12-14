/*FACTS*/
/*Main line*/
age(elizabeth, 96).
/* Elizabeths husband*/
age(phillip, 99).
/*Elizabeths children*/
age(charles, 73).
age(anne, 72).
age(andrew, 62).
age(edward,58).

/*Charles*/
/*Charles wife*/
age(diana, 36).
/*Charles children*/
age(william, 40).
age(harry, 38).
/*William*/
/*Williams wife*/
age(catherine, 40).
/*Williams children*/
age(george, 9).
age(charlotte, 7).
age(louis, 4).
/*Harry*/
/*Harrys wife*/
age(meghan, 41).
/*Harrys children*/
age(archie, 3).
age(lilibet, 1).
/*Anne*/
/*Annes husband: */
age(mark, 74).
/*Annes son */
age(peter, 42).
/*Peters wife */
age(autumn, 44).
/*Peters children */
age(savannah, 11).
age(isla, 10).
/*Annes daughter */
age(zara, 41).
/*Zaras husband */
age(mike, 44).
/*Zaras children */
age(mia, 8).
age(lena, 4).
age(lucas, 1).
/*Andrew*/
/*Andrews wife */
age(sarah, 63).
/*Andrews children */
age(beatrice, 34).
age(eugenie, 32).
/*Andrews Grandchildren */
/*Beatrices husband */
age(edoardo, 38).
/*Beatrices children*/
age(sienna, 1).

/*Eugenies Husband*/
age(jack, 36).
/*Eugenies Children*/
age(augustII, 1).
/*Edward*/
/*Edwards wife*/
age(sophie, 57).
/*Edwards children */
age(louise, 18).
age(james, 14).



child(anne, peter).
child(mark, peter).
child(beatrice, sienna).
child(edoardo, sienna).
child(elizabeth, charles).
child(elizabeth, andrew).
child(elizabeth, edward).
child(elizabeth, anne).
child(phillip, charles).
child(phillip, andrew).
child(phillip, edward).
child(phillip, anne).
child(charles, william).
child(charles, harry).
child(diana, william).
child(diana, harry).
child(william, george).
child(william, charlotte).
child(william, louis).
child(catherine, george).
child(catherine, charlotte).
child(catherine, louis).
child(harry, archie).
child(harry, lilibet).
child(meghan, archie).
child(meghan, lilibet).
/*Extended Family (Other children of Elizabeth)*/
child(peter, savannah).
child(peter, isla).
child(autumn, savannah).
child(autumn, isla).
child(anne, zara).
child(mark, zara).
child(zara, mia).
child(zara, lena).
child(zara, lucas).
child(mike, mia).
child(mike, lena).
child(mike, lucas).
child(andrew, beatrice).
child(andrew, eugenie).
child(sarah, beatrice).
child(sarah, eugenie).
child(eugenie, augustII).
child(jack, autumnII).
child(edward, louise).
child(edward, james).
child(sophie, louise).
child(sophie, james).

/* RULES */
parent(X, Y) :- child(Y, X).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(X, Z),child(Z, Y),X\==Y.
children(X, L) :- findall(Y, parent(Y, X), L).
kthitem(X,[X|_],1).
kthitem(X,[_|L],K) :- K>1,K2 is K - 1,kthitem(X,L,K2).
kthchild(X,Y,K) :- children(X,L),member(Y,L),kthitem(Y,L,K).
nthancestor(X,Y,1) :- parent(X,Y).
nthancestor(X,Y,N) :- N1 is N-1,N1>0,parent(X,Z),nthancestor(Z,Y,N1).
nthcousin(X,Y,N) :- nthancestor(X,P,N), 
    nthancestor(Y,P2,N), 
    sibling(P,P2). 
