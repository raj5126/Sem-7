domains
	User,name=string
	status,habit = symbol
	
predicates
	health(string,status).
	habitof(name,habit).
	response(char).
	go.
	
clauses
	go:-write("Enter Your Name : "),nl,
	    readln(User),
	    health(User,Status),
	    write(User,"'s health is ",Status),nl.
	
	go:-write("Sorry, I can't say about your health."),nl.
	
	habitof(User,"regular smoking"):-
					write("Does ",User," have habit of regular smoking ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"excessive drinking regularly"):-
					write("Does ",User," have habit of excessive drinking regularly	? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"taking drugs"):-
					write("Does ",User," have habit of taking drugs ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"eating oily food"):-
					write("Does ",User," have habit of eating oily food ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"taking too much sugar with foods"):-
					write("Does ",User," have habit of taking too much sugar with foods ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"sleep hours are less"):-
					write("Does ",User," acts like an ownl ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"drinking milk regularly"):-
					write("Does ",User," have habit of drinking milk regularly ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"eating green vegetables or eggs in meal"):-
					write("Does ",User," have habit of eating green vegetables or eggs in meal ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"regular exercise"):-
					write("Does ",User," have habit of regular exercise ? (y/n)"),
					response(Reply),
					Reply='y'.

	habitof(User,"drinking enough water during day"):-
					write("Does ",User," have habit of drinking enough water during day ? (y/n)"),
					response(Reply),
					Reply='y'.
					 
	habitof(User,"regular sufficient sleep hours"):-
					write("Does ",User," have habit of regular sufficient sleep hours ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"regular walk"):-
					write("Does ",User," have habit of regular walk ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	habitof(User,"brushing teeth and washing hair and using showers regularly"):-
					write("Does ",User," have habit of brushing teeth and washing hair and using showers regularly ? (y/n)"),
					response(Reply),
					Reply='y'.
	
	health(User,bad):-habitof(User,"regular smoking"),
			  habitof(User,"excessive drinking regularly"),
			  habitof(User,"taking drugs"),
			  habitof(User,"eating oily food"),
			  habitof(User,"taking too much sugar with foods"),
			  habitof(User,"sleep hours are less").
	
	health(User,good):-habitof(User,"drinking milk regularly"),
			   habitof(User,"eating green vegetables or eggs in meal"),
			   habitof(User,"drinking enough water during day"),
		       habitof(User,"regular exercise"),
			   habitof(User,"regular sufficient sleep hours"),
			   habitof(User,"regular walk"),
			   habitof(User,"brushing teeth and washing hair and using showers regularly").
	
	health(User,moderate):-habitof(User,"eating oily food"),
			       habitof(User,"regular walk"),
			       habitof(User,"taking too much sugar with foods").
				
			  
    response(Reply):-readchar(Reply),
		     write(Reply),nl.