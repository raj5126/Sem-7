A = [5 2 4;
     1 7 -3;
     6 -10 0];

B = [11 5 -3;
     0 -12 4;
     2 6 1];
     
C = [7 14 1;
     10 3 -2;
     8 -5 9];
 
a1 = A+B;
a2 = B+A;
if (a1==a2)
  printf("For task A, additon of matrices is commutative.\n");
else
  printf("Both are different.\n");
endif

b1 = A + (B + C);
b2 = (A + B) + C;
if (b1==b2)
  printf("For task B, additon of matrices is associative.\n");
else
  printf("Both are different.\n");
endif

c1 = 5*(A + C);
c2 = 5*A + 5*C;
if (c1==c2)
  printf("For task C, when matrices are multiplied by a scalar, the multiplication is distributive.\n");
else
  printf("Both are different.\n");
endif

d1 = A*(B+C);
d2 = A*B + A*C;
if (d1==d2)
  printf("For task D, matrix multiplication is distributive.\n");
else
  printf("Both are different.\n");
endif












