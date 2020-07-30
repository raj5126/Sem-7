#Consider image 8.jpg. Enhance the image by applying the log transformation.

r =imread("E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/8.jpg");
subplot(1,2,1);
imshow(r);
title("Normal Image");

c=0.1;
s = c*(log(1+r));
subplot(1,2,2);
imshow(s);
title("Enhanced Image");