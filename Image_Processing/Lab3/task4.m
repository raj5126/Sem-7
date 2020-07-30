#Take your photo and separate out its bit plains. 
#Reconstruct the given image using higher order 2 bit planes. 
#Reconstruct the given image using higher order 4 bit planes. 
#Experiment with the bit planes and derive your conclusions.

r = imread('my_image.jpg');
r_gray = rgb2gray(r);
subplot(3,3,1);
imshow(r_gray);
title("original Image");
for i=1:8,
  subplot(3,3,i+1);
  s = bitget(r_gray,i);
  imshow(s);
  title(i);
endfor

figure;

h2bit = bitget(r_gray,8).*2^(7) + bitget(r_gray,7).*2^(6);
subplot(1,2,1);
h2bit = uint8(h2bit);
imshow(h2bit);
title("Image using higher order 2 bit planes.");

h4bit = bitget(r_gray,8).*2^(7)+bitget(r_gray,7).*2^(6)+bitget(r_gray,6).*2^(5)+bitget(r_gray,5).*2^(4);
subplot(1,2,2);
h4bit = uint8(h4bit);
imshow(h4bit);
title("Image using higher order 4 bit planes.");


