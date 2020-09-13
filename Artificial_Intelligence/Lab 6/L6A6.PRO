domains
	list=integer*

predicates
	split_list(list,list,list).

clauses
	split_list([],[],[]).
	split_list([X|L],[X|L1],L2):-X>=0,!,split_list(L,L1,L2).
	split_list([X|L],L1,[X|L2]):-split_list(L,L1,L2).