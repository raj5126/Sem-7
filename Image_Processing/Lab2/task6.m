#Consider image 9.jpg and 10.jpg and enhance them with power law
#transformation.

r1 = imread('E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/9.jpg');
r2 = imread('E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/10.jpg');

#image1
subplot(2,2,1);
imshow(r1);
title("Normal Image 1");
subplot(2,2,2);
c=uint8(1);
s1 = c*r1.^1.20;
imshow(s1);
title("Enhanced Image 1");

#image2
subplot(2,2,3);
imshow(r2);
title("Normal Image 2");
subplot(2,2,4);
c=uint8(1);
s2 = c*r2.^0.95;
imshow(s2);
title("Enhanced Image 2");  



