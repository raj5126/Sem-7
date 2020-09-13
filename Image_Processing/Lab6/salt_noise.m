function [noisy,y] = salt_noise(img,prob)
  [M,N] = size(img);
  noisy = img;
  for i=1:M*N*prob,
    p=round(1+(M-1)*rand());
    q=round(1+(N-1)*rand());
    img(p,q)=255; 
  endfor
  noisy = img;
  y = imhist(noisy);
endfunction
