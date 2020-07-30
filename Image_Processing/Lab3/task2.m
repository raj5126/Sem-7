#Take any family photo of yours – convert it into grayscale- reduce it’s 
#contrast by using the function that was defined during lab session. Enhance 
#the contrast of that image using piecewise linear operation for contrast 
#stretching.

%task1
r = imread('family.jpg');
r_gray = rgb2gray(r);
#subplot(1,3,1);
#imshow(r_gray);
#title('Original Image');
rmin = min(min(r_gray));
rmax = max(max(r_gray));
smax = 120;
smin = 70;
slope = double(smax-smin)/double(rmax-rmin);
slope
s = smin + slope*(r_gray-rmin);
subplot(1,2,1);
imshow(s);
title("Reduced Contrast Image");

%task2
rmin = min(min(s));
rmax = max(max(s));
smax = 255;
smin = 0;
slope = double(smax-smin)/double(rmax-rmin);
slope
s = smin + slope*(s-rmin);
subplot(1,2,2);
imshow(s);
title("Enhanced Contrast Image using image no.2");




