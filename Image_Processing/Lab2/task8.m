#Consider your under exposed photo (that you generated for assignment 1) and
#enhance it by power law transformation. Specify the value of gamma which is
#suitable for this enhancement.

r = imread('E:/Sem-7/Git-submission/Image_Processing/Lab1/my_under_exposed_image.jpg');
subplot(1,2,1);
imshow(r);
title('Original Image');

c = 1;
gamma = 1.05;
s = c*(r.^gamma);
subplot(1,2,2);
imshow(s);
title('Enhanced Image (gamma = 1.05)' );