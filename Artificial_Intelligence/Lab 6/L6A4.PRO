domains
	list=integer*

predicates
	reverse(list,list,list).

clauses
	reverse([],InputList,InputList).
	reverse([H|T],List1,List2):-reverse(T,[H|List1],List2).