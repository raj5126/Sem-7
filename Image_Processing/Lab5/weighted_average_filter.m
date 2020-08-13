function s = weighted_average_filter(r,m,n)
  [M,N] = size(r);
  a = (m-1)/2;
  b = (n-1)/2;
  new_imsize = zeros(M + 2*a,N + 2*b);
  new_imsize(1+a:M+a,1+b:N+b) = r;
  weight_image = ones(m,n);
  weight_image(a+1,b+1) = 4;
  weight_image(a+1,b)=2;
  weight_image(a+1,b+2)=2;
  weight_image(a,b+1)=2;
  weight_image(a+2,b+1)=2;
  sub_image = ((1/(sum(sum(weight_image)))).*weight_image);
  s = zeros(size(r));
  for i = 1+a:M+a,
    for j = 1+b:N+b,
      k = new_imsize(i-a:i+a,j-b:j+b);
      s(i-a,j-b) = sum(sum(k.*sub_image));
    endfor
  endfor
  s = uint8(s);  
endfunction
