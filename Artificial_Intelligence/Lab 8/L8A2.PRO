domains
    name,gender,address=symbol
    phone=string
    age=integer
	
database
    person(name,age,gender,address,phone)
	
predicates
    writePerson.
    searchByName(name).
    searchByPhone(phone).
    search.
    openDB.
    deleteByName(name).
    deleteByPhone(phone).
    updateByName(name).
    updateByPhone(phone).
	
clauses
    openDB:-consult("d:\database.txt").
	
    writePerson:- 
        readln(Name),readint(Age),readln(Gender),readln(Address),readln(Phone),
        asserta(person(Name,Age,Gender,Address,Phone)),save("d:\database.txt").
    
	search:-
	    retract(person(Name,Age,Gender,Address,Phone)),
        write(Name),nl, write(Age),nl,write(Gender),nl,write(Address),nl,write(Phone),nl,fail.
    
	searchByName(Name1):-
        retract(person(Name1,Age,Gender,Address,Phone)),
        write(Name1),nl, write(Age),nl,write(Gender),nl,write(Address),nl,write(Phone),nl,fail.
    
	searchByPhone(Phone1):-
        retract(person(Name,Age,Gender,Address,Phone1)),
        write(Name),nl, write(Age),nl,write(Gender),nl,write(Address),nl,write(Phone1),nl,fail.
    
	deleteByName(Name1):-
        retract(person(Name1,_,_,_,_)),
        save("database.txt"),nl.
    
	deleteByPhone(Phone1):-
        retract(person(_,_,_,_,Phone1)),
        save("database.txt"),nl.
    
	updateByName(X):-
        retract(person(X,_,_,_,_)),readint(Age),readln(Gender),readln(Address),readln(Phone),
        asserta(person(X,Age,Gender,Address,Phone)),save("d:\database.txt").
    
	updateByPhone(X):-
        retract(person(_,_,_,_,X)),readln(Name),readint(Age),readln(Gender),readln(Address),
        asserta(person(Name,Age,Gender,Address,X)),save("d:\database.txt").
