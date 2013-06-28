clear
clc
close all
pkg load image

old = imread('4.jpg');
old = im2double(old);
subplot(2,3,1);
imshow(old);
title('Original Image');

mask = imread('5.jpg');
% Mask is of size 514 X 359
% Resizing it to 512 X 357
mask = imresize(mask,[357,512]);
mask = im2double(mask);
subplot(2,3,2);
imshow(mask);
title('Mask');

mask_inv = 1 - mask;
subplot(2,3,3);
imshow(mask_inv);
title('Inverse Mask');

bg = imread('6.jpg');
bg = im2double(bg);
subplot(2,3,3);
imshow(bg);
title('Background');

new_fg = old .* mask;
subplot(2,3,4);
imshow(new_fg);
title('Final Foreground');

new_bg = bg .* mask_inv;
subplot(2,3,5);
imshow(new_bg);
title('Final Background');

final = new_fg + new_bg;
subplot(2,3,6);
imshow(final);
title('Final Image');