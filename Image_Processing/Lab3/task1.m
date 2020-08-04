<<<<<<< HEAD
#Do contrast stretching For the Image given in Figure 3.10 of the Textbook.
#Obtain Contrast stretched Image from Low contrast Image as given in Figure.

r = imread("lab3images/4.tif");
subplot(1,2,1);
imshow(r);
title("Low contrast Image");
rmin = min(min(r));
rmax = max(max(r));
smax = 255;
smin = 0;
slope = (smax-smin)/(rmax-rmin);
s = smin + slope*(r-rmin);
subplot(1,2,2);
imshow(s);
=======
#Do contrast stretching For the Image given in Figure 3.10 of the Textbook.
#Obtain Contrast stretched Image from Low contrast Image as given in Figure.

r = imread("lab3images/4.tif");
subplot(1,2,1);
imshow(r);
title("Low contrast Image");
rmin = min(min(r));
rmax = max(max(r));
smax = 255;
smin = 0;
slope = (smax-smin)/(rmax-rmin);
s = smin + slope*(r-rmin);
subplot(1,2,2);
imshow(s);
>>>>>>> 52eb1ce9fe3315803b950a3a56fd0600e8699287
title("Contrast stretched Image");