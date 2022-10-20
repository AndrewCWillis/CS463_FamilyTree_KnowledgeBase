/*FACTS*/
/*Main line*/

female(elizabeth).
age(elizabeth, 96).
/* Elizabeths husband*/
male(phillip).
age(phillip, 99).
/*Elizabeths children*/
male(charles).
age(charles, 73).
male(andrew).
age(andrew, 62).

male(edward).
age(edward,58).
male(anne).
age(anne, 72).

parent(charles, elizabeth).
parent(andrew, elizabeth).
parent(edward, elizabeth).
parent(anne, elizabeth).
parent(charles, phillip).
parent(andrew, phillip).
parent(edward, elizabeth).
parent(anne, elizabeth).
child(elizabeth, charles).
child(elizabeth, andrew).
child(elizabeth, edward).
child(elizabeth, anne).
child(phillip, charles).
child(phillip, andrew).
child(phillip, edward).
child(phillip, anne).


/*Charles*/
/*Charles wife*/

female(diana).
age(diana, 36).
/*Charles children*/
male(william).
age(william, 40).
male(harry).
age(harry, 38).
parent(william, charles).
parent(harry, charles).
parent(william, diana).
parent(harry, diana).
child(charles, william).
child(charles, harry).
child(diana, william).
child(diana, harry).

/*William*/
/*Williams wife*/
female(catherine).
age(catherine, 40).
/*Williams children*/
male(george).
age(george, 9).
female(charlotte).
age(charlotte, 7).
male(louis).
age(louis, 4).
parent(george, william).
parent(charlotte, william).
parent(louis, william).
parent(george, catherine).
parent(charlotte, catherine).
parent(louis, catherine).
child(william, george).
child(william, charlotte).
child(william, louis).
child(catherine, george).
child(catherine, charlotte).
child(catherine, louis).




/*Harry*/
/*Harrys wife*/
female(meghan).
age(meghan, 41).
/*Harrys children*/
male(archie).
age(archie, 3).
female(lilibet).
age(lilibet, 1).
parent(archie, harry).
parent(lilibet, harry).
parent(archie, meghan).
parent(lilibet, meghan).
child(harry, archie).
child(harry, lilibet).
child(meghan, archie).
child(meghan, lilibet).

/*Extended Family (Other children of Elizabeth)*/

/*Anne*/
/*Annes husband: */
male(mark).
age(mark, 74).
/*Annes son */
male(peter).
age(peter, 42).
parent(peter, anne).
parent(peter, mark).
child(anne, peter).
child(mark, peter).
/*Peters wife */
female(autumn).
age(autumn, 44).
/*Peters children */
female(savannah).
age(savannah, 11).
female(isla).
age(isla, 10).
parent(savannah, peter).
parent(isla, peter).
parent(savannah, autumn).
parent(isla, autumn).
child(peter, savannah).
child(peter, isla).
child(autumn, savannah).
child(autumn, isla).


/*Annes daughter */
female(zara).
age(zara, 41).
parent(zara, anne).
parent(zara, mark).
child(anne, zara).
child(mark, zara).

/*Zaras husband */
male(mike).
age(mike, 44).
/*Zaras children */
female(mia).
age(mia, 8).
female(lena).
age(lena, 4).
male(lucas).
age(lucas, 1).
parent(mia, zara).
parent(lena, zara).
parent(lucas, zara).
parent(mia,  mike).
parent(lena, mike).
parent(lucas, mike).
child(zara, mia).
child(zara, lena).
child(zara, lucas).
child(mike, mia).
child(mike, lena).
child(mike, lucas).


/*Andrew*/
/*Andrews wife */
female(sarah).
age(sarah, 63).
/*Andrews children */
female(beatrice).
age(beatrice, 34).
female(eugenie).
age(eugenie, 32).
parent(beatrice, andrew).
parent(eugenie, andrew).
parent(beatrice, sarah).
parent(eugenie, sarah).
child(andrew, beatrice).
child(andrew, eugenie).
child(sarah, beatrice).
child(sarah, eugenie).
/*Andrews Grandchildren */
/*Beatrices husband */
male(edoardo).
age(edoardo, 38).
/*Beatrices children*/
female(sienna).
age(sienna, 1).
parent(sienna, beatrice).
parent(sienna, edoardo).
child(beatrice, sienna).
child(edoardo, sienna).
/*Eugenies Husband*/
male(jack).
age(jack, 36).
/*Eugenies Children*/
female(augustII).
age(augustII, 1).
parent(augustII, eugenie).
parent(augustII, jack).
child(eugenie, augustII).
child(jack, autumnII).

/*Edward*/
/*Edwards wife*/
female(sophie).
age(sophie, 57).
/*Edwards children */
female(louise).
age(louise, 18).
male(james).
age(james, 14).
parent(louise, edward).
parent(james, edward).
parent(louise, sophie).
parent(james, sophie).
child(edward, louise).
child(edward, james).
child(sophie, louise).
child(sophie, james).







