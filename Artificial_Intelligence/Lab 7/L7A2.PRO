domains
	name = person(first,last)
	location = address(street, city, state, zip)
	first, last, street, city, state, zip, department, position = symbol
	salary =integer
	
predicates
	employee(name,location,department,position,salary).
	employee_with_salary_higher_than_5000.
	employee_available_particular_department(department).
	employee_with_particular_position(position).
	write_name_salary(name,salary).
	write_name(name).
		
clauses
	employee(person("Raj","Panchal"),address("HONEY PARK","Surat","Gujarat","395009"),"Development","Senior Head",15000).
	employee(person("Parth","Patel"),address("Dungari","Valsad","Gujarat","324856"),"Development","Senior Head",12000).
	employee(person("Siddhi","Shah"),address("Ring Road","Vadodra","Gujarat","375002"),"Marketing","Junior",700).
	employee(person("Rutu","Joshi"),address("M G Road","Bhavnagar","Gujarat","362009"),"Human Resource","Fresher",20000).
	employee(person("Pranav","Patel"),address("Jalapor","Navsari","Gujarat","322009"),"Quality Assurance","Senior Head",4000).
	employee(person("Prachi","Shah"),address("Kabilpor","Navsari","Gujarat","322059"),"Quality Assurance","Junior",2000).
	
	employee_with_salary_higher_than_5000:-
						write("Employee with 50000 salary"),nl,
						write("--------------------------"),nl,
						employee(Name,_,_,_,Salary),
						Salary>5000,
						write_name_salary(Name,Salary),
						fail.
	
	employee_available_particular_department(Department):-
						write("Employee with ",Department," Department"),nl,
						write("---------------------------"),nl,
						employee(Name,_,Department,_,_),
						write_name(Name),
						fail.
	
	employee_with_particular_position(Position):-
						write("Employee with ",Position," Position"),nl,
						write("---------------------------"),nl,
						employee(Name,_,_,Position,_),
						write_name(Name),
						fail.
	
	write_name_salary(person(First, Last), Salary):-
							write(First," ",Last,"\t",Salary),nl.
	
	write_name(person(First,Last)):-
							write(First," ",Last),nl.