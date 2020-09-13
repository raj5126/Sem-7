predicates
	max(integer,integer,integer).
	min(integer,integer,integer).
clauses
	max(X, Y, Max):-X>=Y,!,Max=X;Max=Y.
	min(X, Y, Min):-X<=Y,!,Min=X;Min=Y.
			