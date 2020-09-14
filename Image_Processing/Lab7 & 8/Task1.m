pkg load image;

r1 = imread("pepper_with_0.3p.jpg");
r1 = imresize(r1,[512,512]);
subplot(1,2,1);
imshow(r1);
title("Original Image");

s1 = my_homomorphic_filter(r1,1,5);
subplot(1,2,2);
imshow(s1);
title("Filtered Image");

figure;

r2 = imread("salt_with_0.5p.jpg");
r2 = imresize(r2,[512,512]);
subplot(1,2,1);
imshow(r2);
title("Original Image");

s2 = my_homomorphic_filter(r2,1,5);
subplot(1,2,2);
imshow(s2);
title("Filtered Image");

figure;

r3 = imread("salt_pepper_with_0.2.jpg");
r3 = imresize(r3,[512,512]);
subplot(1,2,1);
imshow(r3);
title("Original Image");

s3 = my_homomorphic_filter(r3,1,5);
subplot(1,2,2);
imshow(s3);
title("Filtered Image");