clear
clc
close all

% Using the overexposed image created in Lab 1
my_oe = imread('over_exposed.jpg');
subplot(1,2,1);
imshow(my_oe);
title('Overexposed Image');

c = 1;
gamma = 0.94;
enhanced_oe = c * my_oe .^ gamma;
subplot(1,2,2);
imshow(enhanced_oe);
title('Suitable Gamma = 0.92');