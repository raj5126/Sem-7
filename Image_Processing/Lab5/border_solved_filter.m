function s = border_solved_filter(r,m,n)
  [M,N] = size(r);
  a = (m-1)/2;
  b = (n-1)/2;
  new_imsize = zeros(M + 2*a,N + 2*b);
  new_imsize(1+a:M+a,1+b:N+b) = r;
  
  left_part = r(:,1:b);
  right_part = r(:,N-b:N);
  upper_part = r(1:a,:);
  down_part = r(M-a:M,:);
 
  [M1,N1] = size(new_imsize);
  new_imsize(1+a:M1-a,1:b) = left_part;
  new_imsize(1+a:M1-a,N1-b:N1) = right_part;
  new_imsize(1:a,1+b:N1-b) = upper_part;
  new_imsize(M1-a:M1,1+b:N1-b) = down_part;
  
  new_imsize(1:a,1:b) = sum(sum(r(1:a,1:b)))/(a*b);
  new_imsize(M1-a+1:M1,1:b) = sum(sum(r(M-a+1:M,1:b)))/(a*b);
  new_imsize(1:a,N1-b+1:N1) = sum(sum(r(1:a,N-b+1:N)))/(a*b);
  new_imsize(M1-a+1:M1,N1-b+1:N1) = sum(sum(r(M-a+1:M,N-b+1:N)))/(a*b);
  
  sub_image = ((1/(m*n)).*ones(m,n));
  s = zeros(size(r));
  for i = 1+a:M+a,
    for j = 1+b:N+b,
      k = new_imsize(i-a:i+a,j-b:j+b);
      s(i-a,j-b) = sum(sum(k.*sub_image));
    endfor
  endfor
  s = uint8(s);  
  
endfunction
