predicates
	male(symbol).
	female(symbol).
	parent(symbol,symbol).
	father(symbol,symbol).
	mother(symbol,symbol).
	wife(symbol,symbol).
	grandfather(symbol,symbol).
	grandmother(symbol,symbol).
	brother(symbol,symbol).
	sister(symbol,symbol).
	uncle(symbol,symbol).
	aunt(symbol,symbol).
	nephew(symbol,symbol).
	niece(symbol,symbol).
	
clauses
	male("Pandu").
	male("Nakula").
	male("Sahadeva").
	male("Arjuna").
	male("Bhima").
	male("Yudhishthira").
	male("Satanika").
	male("Shrutasena").
	male("Shrutakarma").
	male("Abhimanyu").
	male("Iravan").
	male("Babruvahana").
	male("Sutasoma").
	male("Prativindhya").
	
	female("Madri").
	female("Kunti").
	female("Draupadi").
	female("Subhadra").
	female("Ulupi").
	female("Chitrangada").
	
	parent("Pandu","Nakula").
	parent("Pandu","Sahadeva").
	parent("Pandu","Arjuna").
	parent("Pandu","Bhima").
	parent("Pandu","Yudhishthira").
	parent("Madri","Nakula").
	parent("Madri","Sahadeva").
	parent("Kunti","Arjuna").
	parent("Kunti","Bhima").
	parent("Kunti","Yudhishthira").
	parent("Nakula","Satanika").
	parent("Draupadi","Satanika").
	parent("Sahadeva","Shrutasena").
	parent("Draupadi","Shrutasena").
	parent("Arjuna","Shrutakarma").
	parent("Arjuna","Abhimanyu").
	parent("Arjuna","Iravan").
	parent("Arjuna","Babruvahana").
	parent("Draupadi","Shrutakarma").
	parent("Subhadra","Abhimanyu").
	parent("Ulupi","Iravan").
	parent("Chitrangada","Babruvahana").
	parent("Bhima","Sutasoma").
	parent("Draupadi","Sutasoma").
	parent("Yudhishthira","Prativindhya").
	parent("Draupadi","Prativindhya").
	
	father(X,Y):-parent(X,Y),male(X).
	mother(X,Y):-parent(X,Y),female(X).
	wife(X,Y):-parent(X,Z),parent(Y,Z),
		   male(X),female(Y).
	grandfather(X,Y):-father(X,Z),father(Z,Y).
	grandmother(X,Y):-mother(X,Z),father(Z,Y).
	brother(X,Y):-father(A,X),father(A,Y),
	              mother(B,X),mother(B,Y),
	              male(X),not(X=Y).
	sister(X,Y):-father(A,X),father(A,Y),
	             mother(B,X),mother(B,Y),
	             female(X),not(X=Y).        
	uncle(X,Y):-father(Z,Y),brother(X,Z).
	aunt(X,Y):-father(Z,Y),brother(B,Z),wife(B,X).
	nephew(X,Y):-father(Z,Y),brother(X,Z),
		     male(X),male(Y).	             
	niece(X,Y):-father(Z,Y),brother(X,Z),
		    male(X),female(Y).           
             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	             
	     