% Calculate : 3^7 * log(76)
%             ----------------  + (910)^(1/3)
%              7^3 + 546 

first_numerator = power(3,7)* log10(76);
first_denominator = power(7,3) + 546;
second_term =  power(910,1/3);

ans = (first_numerator/first_denominator) + second_term