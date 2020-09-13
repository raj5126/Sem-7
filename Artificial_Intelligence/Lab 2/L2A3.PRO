domains
	course, level, material, component, person = symbol
predicates
	is(course,level).
	available(course,material).
	has(course,component). 
	takes(person,course).   
	hypothesis(person,course).
clauses
	is("hardware","easy").
	is("logic","not easy").
	is("graphics","easy").
	
	has("graphics","8 credits").
	has("graphics","lab component").
	
	available("hardware","Books").
	available("database","Books").
	
	takes("Mary","compilers").
	
	hypothesis(X,Y):-takes(X,Y),is(Y,"easy"),available(Y,"Books").
	hypothesis(X,Y):-takes(X,Y),has(Y,"8 credits"),has(Y,"lab component").
	