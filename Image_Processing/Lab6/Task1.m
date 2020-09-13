r = (checkerboard > 0.5);
[m,n] = size(r);
chess_image = uint8(zeros(size(r)));
for i=1:m,
  for j=1:n,
    if r(i,j)==1
      chess_image(i,j)=170;
     else
      chess_image(i,j)=50;
     endif
   endfor
endfor

imshow(chess_image);
title("Original Image");

figure;

[noisy_image, y] = gamma_noise(chess_image,0.5,20);
subplot(1,2,1);
imshow(noisy_image);
title("Gamma Noise");
subplot(1,2,2);
stem(0:255,y);

figure;

[noisy_image, y] = exponential_noise(chess_image,0.5,20);
subplot(1,2,1);
imshow(noisy_image);
title("Exponential Noise");
subplot(1,2,2);
stem(0:255,y);
