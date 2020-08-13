function s = antiaging(r)
  [M,N] = size(r);
  a=1;
  b=1;
  new_imsize = zeros(M + 2*a,N + 2*b);
  new_imsize(1+a:M+a,1+b:N+b) = r;
  filter = zeros(3,3);
  filter_box(1,1) = 5;
  filter_box(1,2) = 7;
  filter_box(1,3) = 5;
  filter_box(2,1) = 7;
  filter_box(2,2) = 9;
  filter_box(2,3) = 7;
  filter_box(3,1) = 5;
  filter_box(3,2) = 7;
  filter_box(3,3) = 5;
  filter_box = filter_box/sum(sum(filter_box));
  s = zeros(size(r));
  for i = 1+a:M+a,
    for j = 1+b:N+b,
      k = new_imsize(i-a:i+a,j-b:j+b);
      s(i-a,j-b) = sum(sum(k.*filter_box));
    endfor
  endfor
  s = uint8(s);  
  
endfunction
