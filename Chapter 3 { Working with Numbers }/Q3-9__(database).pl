born(jan, date(20, 03, 1977)).
born(jaap, date(16, 11, 1995)).
born(joop, date(30, 04, 1989)).
born(joris, date(17, 03, 1995)).
born(jelle, date(01, 01, 2004)).
born(jesus, date(24, 12, 0000)).
born(jeroen, date(02, 02, 1992)).
born(jannecke, date(17, 03, 1993)).

year(Year, Person) :-
    born(Person, date(_, _, Year)).


before(date(Day1, Month, Year), date(Day2, Month, Year)) :-
    Day1 < Day2.

before(date(_, Month1, Year), date(_, Month2, Year)) :-
    Month1 < Month2.

before(date(_, _, Year1), date(_, _, Year2)) :-
    Year1 < Year2.


older(Person1, Person2) :-
    born(Person1, Date1),
    born(Person2, Date2),
    before(Date1, Date2).