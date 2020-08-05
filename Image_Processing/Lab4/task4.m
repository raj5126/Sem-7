#Perform histogram equalization for image ‘test3.tif’.
r = imread('lab4Images/test3.tif');
subplot(2,2,1);
imshow(r);
title("Original Image");
subplot(2,2,2);
imhist(r);

[s, final] = imequalizehist(r);
subplot(2,2,3);
imshow(final);
title("Equalized Image");
subplot(2,2,4);
imhist(final);




