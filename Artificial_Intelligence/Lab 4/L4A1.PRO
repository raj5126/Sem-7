predicates
	go.
	find_roots(real,real,real).

clauses
	go:-
			write("Enter a,b,c : "),nl,
			readreal(A),
			readreal(B),
			readreal(C),
			D = (B*B) - (4*A*C),
			find_roots(D,A,B).
	
	find_roots(D,A,B):-
			D=0,
			X=(-B)/(2*A),
			write("X = "),write(X),nl;
			
			D>0,
			X1=(-B + sqrt(D))/(2*A),
			X2=(-B - sqrt(D))/(2*A),
			write("x1 = " ),write(X1),
			write(" x2 = "),write(X2),nl;
			
			D<0,
			write("Not possible to find roots."),nl.