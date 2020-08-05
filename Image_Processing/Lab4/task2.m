#Take your color photograph taken in dark. Equalize it�s histogram.
r = imread('lab4Images/my_dark_photo.jpg');
subplot(1,2,1);
imshow(r);
title('Original Image');

red_channel = r(:,:,1);
green_channel = r(:,:,2);
blue_channel = r(:,:,3);

[yRed, x] = imhist(red_channel);
[yGreen, x] = imhist(green_channel);
[yBlue, x] = imhist(blue_channel);

subplot(1,2,2);
plot(x, yRed, x, yGreen, x, yBlue);
legend("Red","Green","Blue");

[sr, finalr] = imequalizehist(red_channel);
[sg, finalg] = imequalizehist(green_channel);
[sb, finalb] = imequalizehist(blue_channel);

[yRedf, xf] = imhist(finalr);
[yGreenf, xf] = imhist(finalg);
[yBluef, xf] = imhist(finalb);

figure;

s = zeros(size(r));
s(:,:,1) = finalr;
s(:,:,2) = finalg;
s(:,:,3) = finalb;

subplot(1,2,1);
imshow(uint8(s));
title('Equalize histogram image');

subplot(1,2,2);
plot(xf, yRedf, xf, yGreenf, x, yBluef);
legend("Red","Green","Blue");



