domains
	name = person(symbol,symbol) 
	birthday = b_date(symbol,integer,integer) 
	ph_num = symbol 

predicates
	phone_list(name,symbol,birthday)
	get_months_birthdays
	convert_month(symbol,integer)
	check_birthday_month(integer,birthday)
	write_person_birthdate_mobileno(name,birthday,ph_num)

clauses
	get_months_birthdays:-
				write("********************* This Month's Birthday List ********************"),nl,
				write("First name\tLast Name\tBirth Date\tMobile No\n"),
				write("*********************************************************************"),nl,
				date(_, This_month, _),
				phone_list(Person, Mobile, Date),
				check_birthday_month(This_month, Date),
				write_person_birthdate_mobileno(Person,Date,Mobile),
				fail.
				
	get_months_birthdays:-
					write("\n\n Press any key to continue: "),nl,
					readchar(_).
					
	write_person_birthdate_mobileno(person(First_name,Last_name),b_date(M,D,Y),Mobile):-
												write(" ",First_name,"\t\t ",Last_name,"\t\t",M,"-",D,"-",Y,"\t",Mobile),nl.
					
	check_birthday_month(Mon,b_date(Month,_,_)):-
										convert_month(Month,Month1),
										Mon = Month1.

	phone_list(person(apurva, mehta), "767-8463", b_date(jan, 13, 1955)).
	phone_list(person(apurva, shah), "438-8400", b_date(feb, 04, 1985)).
	phone_list(person(apurva, parikh), "555-5653", b_date(mar, 22, 1935)).
	phone_list(person(apurva, doshi), "767-2223", b_date(apr, 04, 1951)).
	phone_list(person(apurva, joshi), "555-1212", b_date(may, 31, 1962)).
	phone_list(person(apurva, baxi), "438-8400", b_date(jun, 13, 1980)).
	phone_list(person(apurva, dave), "767-8463", b_date(jun, 22, 1986)).
	phone_list(person(apurva, bhatt), "555-5653", b_date(jul, 22, 1981)).
	phone_list(person(apurva, patel), "767-2223", b_date(aug, 13, 1981)).
	phone_list(person(apurva, dangar), "438-8400", b_date(sep, 22, 1981)).
	phone_list(person(apurva, pandya), "438-8400", b_date(sep, 31, 1952)).
	phone_list(person(apurva, vaishnav), "555-1212", b_date(nov, 22, 1984)).
	phone_list(person(apurva, gor), "767-2223", b_date(sep, 04, 1987)).
	phone_list(person(apurva, kanani), "438-8400", b_date(dec, 31, 1981)).

	convert_month(jan, 1).
	convert_month(feb, 2).
	convert_month(mar, 3).
	convert_month(apr, 4).
	convert_month(may, 5).
	convert_month(jun, 6).
	convert_month(jul, 7).
	convert_month(aug, 8).
	convert_month(sep, 9).
	convert_month(oct, 10).
	convert_month(nov, 11).
	convert_month(dec, 12).