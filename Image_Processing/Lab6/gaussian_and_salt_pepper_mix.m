function [noisy_img ,y] = gaussian_and_salt_pepper_mix(img,mu,sigma,prob)
  [M,N] = size(img);
  n = mu + (round(sigma*randn(M,N)));
  n = uint8(n);
  gaussian_noisy=img;
  for i=1:M*N*prob,
    p=round(1+(M-1)*rand());
    q=round(1+(N-1)*rand());
    gaussian_noisy(p,q) = img(p,q)+n(p,q); 
  endfor
  for i=1:M*N*prob,
    p=round(1+(M-1)*rand());
    q=round(1+(N-1)*rand());
    if (round(rand())==0)
      img(p,q)=0;
    else
      img(p,q)=255;
    end
  endfor
endfunction