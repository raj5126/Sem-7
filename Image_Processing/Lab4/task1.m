#Can two visually different image have same histogram? If yes, synthesize two 
#grayscale images which are visually different but having same histogram and 
#also show the histogram. If no, justify your answer.

i1 = imread('lab4Images/test3.tif');
i2 = imread('lab4Images/1.jpg');
ref = imread('lab4Images/2.jpg');

[s1,r1] = imhistmatch(i1,ref);
[s2,r2] = imhistmatch(i2,ref);

subplot(2,2,1);
imshow(r1);

subplot(2,2,2);
imshow(r2);

subplot(2,2,3);
hist(r1);

subplot(2,2,4);
hist(r2);


