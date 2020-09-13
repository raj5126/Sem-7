domains
	patient, indication, disease=symbol
predicates
	symptom(patient, indication).
	hypothesis(patient, disease).
clauses
	symptom("Parva",fever).
	symptom("Parva",rash).
	symptom("Parva",headache).
	symptom("Parva",runny_nose).
	symptom("Vidhi",chills).
	symptom("Vidhi",fever).
	symptom("Vidhi",headache).
	symptom("Vivan",runny_nose).
	symptom("Vivan",rash).
	symptom("Vivan",flu).
	
	hypothesis(Patient,measles):-symptom(Patient,fever),
				     symptom(Patient,cough),
				     symptom(Patient,conjunctivitis),
				     symptom(Patient,rash).
				     
	hypothesis(Patient,german_measles):-symptom(Patient,fever),
					    symptom(Patient,headache),
					    symptom(Patient,runny_nose),
					    symptom(Patient,rash).
					  
	hypothesis(Patient,flu):-symptom(Patient,fever),
				 symptom(Patient, headache),
				 symptom(Patient,body_ache),
				 symptom(Patient,chills).
	
	hypothesis(Patient,common_cold):-symptom(Patient,headache),
					 symptom(Patient,sneezing),
					 symptom(Patient,sore_throat),
					 symptom(Patient,chills),
					 symptom(Patient,runny_nose).
	
	hypothesis(Patient,mumps):-symptom(Patient,fever),
				   symptom(Patient,swollen_glands).
							
	hypothesis(Patient,chicken_pox):-symptom(Patient,fever),
					 symptom(Patient,rash),
					 symptom(Patient,body_ache),
					 symptom(Patient,chills).