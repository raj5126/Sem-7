function [noisy, y] = exponential_noise(img,a,b)
  [M,N]=size(img);
  n = zeros(M,N);
  k=-1/a;
  n=k*log(1-rand(M,N));
  noisy=n+img;
  y=imhist(noisy);
endfunction