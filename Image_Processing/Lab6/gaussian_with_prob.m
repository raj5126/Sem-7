function [noisy,y] = gaussian_with_prob(img,mu,sigma,prob)
  [M,N] = size(img);
   n = mu + (round(sigma*randn(M,N)));
   n = uint8(n);
   noisy=img;
  for i=1:M*N*prob,
    p=round(1+(M-1)*rand());
    q=round(1+(N-1)*rand());
    noisy(p,q) = img(p,q)+n(p,q); 
  endfor
  y = imhist(noisy);
  noisy=uint8(noisy);
endfunction









