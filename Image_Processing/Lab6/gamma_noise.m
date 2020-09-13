function [noisy, y] = gamma_noise(img,a,b)
  [M,N]=size(img);
  n = zeros(M,N);
  k=-1/a;
  for i=1:b,
    n=n+k*log(1-rand(M,N));
  endfor
  noisy=n+img;
  y=imhist(noisy);
endfunction
