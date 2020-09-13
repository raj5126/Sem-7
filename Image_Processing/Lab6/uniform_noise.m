function [noisy,y] = uniform_noise(img,a,b)
  [M,N] = size(img);
  n = uint8(round(a+(b-a)*rand(M,N)));
  noisy = img+n;
  y = imhist(noisy);
endfunction
