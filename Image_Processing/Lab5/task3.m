#Take any of your gray scale photo and blur it with weighted average filter. 
#Compare amount of blurring with the standard box filter of the same size.

r = imread('my_image.jpg');
imshow(r);

figure;

s = weighted_average_filter(r,7,7);
imshow(s);
title("Image(weighted average filter 7 x 7)");