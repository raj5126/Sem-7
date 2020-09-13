predicates
	isprime(integer)
	check(integer,integer)

clauses
	isprime(0):-!,fail.
	isprime(1):-!,fail.
	isprime(2):-!.
	isprime(X):-check(X,2).
	
	check(X,Y):-Y>sqrt(X),!.
	check(X,Y):-Y<=sqrt(X),X mod Y=0,!,fail.
	check(X,Y):-YY=Y+1,check(X,YY).
