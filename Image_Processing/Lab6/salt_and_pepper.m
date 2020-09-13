function [noisy,y] = salt_and_pepper(img,prob)
  [M,N] = size(img);
  noisy = img;
  for i=1:M*N*prob,
    p=round(1+(M-1)*rand());
    q=round(1+(N-1)*rand());
    if (round(rand())==0)
      img(p,q)=0;
    else
      img(p,q)=255;
    end
  endfor
  noisy = img;
  y = imhist(noisy);
endfunction
