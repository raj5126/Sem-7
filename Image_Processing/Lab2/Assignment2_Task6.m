clear
clc
close all

img1 = imread('9.jpg');
subplot(2,2,1);
imshow(img1);
title('Original Image 1');

img2 = imread('10.jpg');
subplot(2,2,2);
imshow(img2);
title('Original Image 2');

c = 1.2
gamma1 = 1.2;
gamma2 = 0.95;

enhanced_img1 = c * img1 .^ gamma1;
subplot(2,2,3);
imshow(enhanced_img1);
title('Enhanced Image 1');

enhanced_img2 = c * img2 .^ gamma2;
subplot(2,2,4);
imshow(enhanced_img2);
title('Enhanced Image 2');