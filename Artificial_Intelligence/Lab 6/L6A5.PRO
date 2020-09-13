domains
	list=integer*

predicates
	nth_element(list,integer)

clauses
	nth_element([H|_],1):-write(H),nl.
	nth_element([_|T],N):-NN=N-1,
			      nth_element(T,NN).