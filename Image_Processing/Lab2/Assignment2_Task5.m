clear
clc
close all

img = imread('8.jpg');
subplot(1,2,1);
imshow(img);
title('Original Image');

enhanced_img = log(img+1);
% Note: +1 is used because log(0) is undefined
enhanced_img = enhanced_img / max(max(enhanced_img));

subplot(1,2,2);
imshow(enhanced_img);
title('Enhanced Image');