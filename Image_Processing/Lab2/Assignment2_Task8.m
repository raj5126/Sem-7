clear
clc
close all

% Using the overexposed image created in Lab 1
my_ue = imread('under_exposed.jpg');
subplot(1,2,1);
imshow(my_ue);
title('Underexposed Image');

c = 1.2;
gamma = 1.1;
enhanced_ue = c * my_ue .^ gamma;
subplot(1,2,2);
imshow(enhanced_ue);
title('Suitable Gamma = 1.1');