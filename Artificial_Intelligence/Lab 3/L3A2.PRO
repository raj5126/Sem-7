domains
	User, name = string
	colour_name, characteristic_name = symbol
	
predicates
        colour(colour_name).
		likes(name).
		response(char).
        characteristic(colour_name,characteristic_name).
		result(colour_name,characteristic_name).
		go.

clauses
	
	colour(red).
	colour(orange).
	colour(yellow).
	colour(green).
	colour(blue).
	colour(purple).
	colour(brown).
	colour(grey).
	colour(black).
	
	characteristic(red,very_social).
	characteristic(red,assertive).
	characteristic(red,energetic).
	characteristic(red,moody).
	characteristic(red,impulsive).
	characteristic(red,sympathetic).
	characteristic(red,easiy_swayed).
	characteristic(red,optimist).
	characteristic(red,complainer).
	characteristic(red,brave).
	
	characteristic(orange,good_natured).
	characteristic(orange,very_social).
	characteristic(orange,easiy_swayed).
	characteristic(orange,loyal).
	characteristic(orange,pure_heart).
	characteristic(orange,good_work_ethics).
	
	characteristic(yellow,very_imaginative).
	characteristic(yellow,urge_to_help).
	characteristic(yellow,free_spirit).
	characteristic(yellow,shy).
	characteristic(yellow,wise).
	characteristic(yellow,mental_loner).
	characteristic(yellow,keep_secrets_of_friends).
	
	characteristic(green,sensitive).
	characteristic(green,good_citizen).
	characteristic(green,etiquette).
	characteristic(green,frank).
	characteristic(green,moral).
	characteristic(green,reputable).
	characteristic(green,deep_affection_towards_your_family).
	
	characteristic(blue,deliberate).
	characteristic(blue,introspective).
	characteristic(blue,sensitive).
	characteristic(blue,loyal).
	characteristic(blue,sober).
	characteristic(blue,dreamer).
	characteristic(blue,ego).
	
	characteristic(purple,good_mind).
	characteristic(purple,observer).
	characteristic(purple,angry).
	characteristic(purple,creative).
	characteristic(purple,appreciator).
	
	characteristic(brown,good_citizen).
	characteristic(brown,clever).
	characteristic(brown,stubborn).
	characteristic(brown,dependable).
	characteristic(brown,not_implusive).
	characteristic(brown,bargainer).
	
	characteristic(grey,cautious).
	characteristic(grey,compromiser).
	characteristic(grey,peaceful).
	
	characteristic(black,above_average).
	characteristic(black,conventional).
	characteristic(black,decent).
	characteristic(black,polite).
	characteristic(black,regal).
	
	
	result(X,Y):-characteristic(X,Y),
				 write("\t=",Y,"\n"),
				 fail.
				 
	likes(User):-colour(X),
				 write("Does ",User," like ",X," colour (y/n) ? : "),
				 response(Flag),
				 Flag='y',!,
				 write(User," is :\n"),
				 result(X,_),
				 write("\n").
	
	go:-write("Enter Your Name : "),nl,
	    readln(User),
	    likes(User).
	
	response(Flag) :-readchar(Flag),
	write(Flag),nl.