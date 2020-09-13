#Get information about imnoise and generate various noisy images.
r = imread("sample.jpg");
imshow(r);
title("Original image");

figure;

gaussian_noise = imnoise(r,"gaussian",0,0.01);
subplot(1,2,1);
imshow(gaussian_noise);
title("Gaussian Noise");
x = imhist(gaussian_noise);
subplot(1,2,2);
stem(x);

figure;

poisson_noise = imnoise(r,"poisson");
subplot(1,2,1);
imshow(poisson_noise);
title("poisson Noise");
x = imhist(poisson_noise);
subplot(1,2,2);
stem(x);

figure;

salt_pepper_noise = imnoise(r,"salt & pepper");
subplot(1,2,1);
imshow(salt_pepper_noise);
title("Salt and pepper Noise");
x = imhist(salt_pepper_noise);
subplot(1,2,2);
stem(x);

figure;

speckle_noise = imnoise(r,"speckle");
subplot(1,2,1);
imshow(speckle_noise);
title("Speckle Noise");
x = imhist(speckle_noise);
subplot(1,2,2);
stem(x);
