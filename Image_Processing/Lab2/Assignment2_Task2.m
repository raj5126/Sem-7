clear
clc
close all
pkg load image

% Directly using my Black and White image created in Lab 1
my_bw = imread('black_white.jpg');
my_bw = imresize(my_bw, [256,256]);
subplot(2,3,1);
imshow(my_bw);
title('My B&W Image (256 X 256)');

img2 = imread('3.jpg');
subplot(2,3,2);
imshow(img2);
title('Sample Image (256 X 256)');

and_op = and(my_bw,img2);
or_op = or(my_bw,img2);
not_op = not(my_bw);

subplot(2,3,3);
imshow(and_op);
title('Output of AND');

subplot(2,3,4);
imshow(or_op);
title('Output of OR');

subplot(2,3,5);
imshow(not_op);
title('Output of NOT');
