domains
	list=integer*

predicates
	last_element(list,integer)

clauses
	last_element([Z],X):-Z=X.
	last_element([_|T],X):-last_element(T,X).