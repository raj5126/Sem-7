predicates
	fib(integer,integer).
	
clauses
	fib(0,0):-!.
	fib(1,1):-!.
	fib(N,Result):-
			N1=N-1,
			N2=N-2,
			fib(N1,Result1),
			fib(N2,Result2),
			Result=Result1+Result2.
			