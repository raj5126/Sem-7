domains 
	list = integer*

predicates
	member(integer,list)

clauses
	member(X,[X|_]).
	member(X,[_|T]):-member(X,T).