function [noisy,y] = gaussian_noise(img,sigma,mu)
  [M,N] = size(img);
  n = uint8(mu + (round(sigma*randn(M,N))));
  noisy = img+n;
  y = imhist(uint8(noisy));
endfunction
