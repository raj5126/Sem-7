predicates
	fib(integer,integer,integer).
	go.
	
clauses
	go:-
		write("Enter number : "),
		readreal(N),
		A=0,
		B=1,
		write(A),write(' '),write(B),write(' '),
		fib(N,A,B).
	
	fib(N,A,B):-
		N<2,nl;
		C=A+B,
		write(C),
		write(" "),
		D=B,
		E=C,
		N1=N-1,
		fib(N1,D,E).