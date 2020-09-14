r = imread("Gaussian_with_0.4.jpg");
subplot(1,2,1);
imshow(r);
title("Original Image");

s = my_mid_point_filter(r,5,5);
subplot(1,2,2);
imshow(s);
title("After applying mid point Image");