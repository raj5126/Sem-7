domains
	a,b,c,d,correct_option = symbol
	question = string
	options = opt(a,b,c,d)
	
database
	quiz(question, options, correct_option)
	
predicates
	start.
	repeat.
	selectchoice(Integer).
	
clauses
	repeat.
	repeat:-repeat.
	
	start :-
			repeat,
			write("0.) Exit"),
			write("\n1.) Add Question"),
			write("\n2.) Ask Question"),
			write("\n Enter Your Choice : "),
			readint(Choice),
			selectchoice(Choice),
			Choice=0.
	
	selectchoice(0).
	
	selectchoice(1):-
			consult("d:\quiz.txt"),
			write("Enter Que : "),
			readln(Que),
			write("Enter Option A : "),
			readln(A),
			write("Enter Option B : "),
			readln(B),
			write("Enter Option C : "),
			readln(C),
			write("Enter Option D : "),
			readln(D),
			write("Enter Correct Option (a,b,c,d)"),
			readln(Correct_Opt),
			assert(quiz(Que,opt(A,B,C,D),Correct_Opt)),
			save("d:\quiz.txt").