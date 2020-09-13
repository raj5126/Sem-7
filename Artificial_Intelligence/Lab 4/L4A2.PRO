domains
	person, password = symbol
	
predicates
	login.
	count(integer).
	logon(person,password).
	message(integer).
	
clauses
	logon("Raj","raj5126").
	logon("Parth","parth5820").
	login:-
		write("Welcome ! Please Login"),nl,
		count(3),
		write("Login Unsuccessful"),nl.
			
	login:-
		write("Login Successful"),nl.
	
	count(X):-
		X<>0,
		write("Enter user name : "),nl,
		readln(User),
		write("Enter password : "),nl,
		readln(Passwd),
		not(logon(User,Passwd)),
		Y=X-1,
		message(Y),
		count(Y).
	
	count(0).
	
	message(X):-
			X<>0,
			write("Login Failed, Please Try Again Later"),nl.
			
	message(0).
		