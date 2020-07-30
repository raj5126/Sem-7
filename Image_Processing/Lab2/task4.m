#Take your own grayscale photo and apply 'negative' transformation.

im_gray = imread('E:/Sem-7/Git-submission/Image_Processing/Lab1/my_gray_scale.jpg');
negative_im = 255-im_gray;
imshow(negative_im);
title("Negative image");


