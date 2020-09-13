pkg load image;
r = imread("gray_scale_img.jpg");
subplot(1,2,1);
imshow(r);
title("Original Image");
x = imhist(r);
subplot(1,2,2);
stem(x);

figure;

#Gaussian noise with probability 0.4 using randn function
#[noisy,y] = gaussian_with_prob(r,50,20,0.4);
#subplot(1,2,1);
#imshow(noisy);
#title("Gaussian noise with probability 0.4 using randn function")
#subplot(1,2,2);
#stem(0:255,y);
#imwrite(noisy,"Gaussian_with_0.4.jpg");

#Gaussian noise with mean 2 and variance 0.06 using imnoise function
#s = imnoise(r,'gaussian',2,0.06);
#subplot(1,2,1);
#imshow(s);
#title("Gaussian noise with mean 2 and variance 0.06 using imnoise function");
#x = imhist(s);
#subplot(1,2,2);
#stem(x);
#imwrite(s,"Gaussian_m2_v0.06.jpg");

#figure;

#Salt and pepper noise with prob 0.2
#[noisy_im, y] = salt_and_pepper(r,0.2);
#subplot(1,2,1);
#imshow(noisy_im);
#title("salt and pepper noise with prob 0.2");
#subplot(1,2,2);
#stem(0:255,y);
#imwrite(noisy_im,"salt_pepper_with_0.2.jpg");

#figure;

#Salt noise with probability 0.5
#[noisy_im, y] = salt_noise(r,0.5);
#subplot(1,2,1);
#imshow(noisy_im);
#title("Salt noise with probability 0.5");
#subplot(1,2,2);
#stem(0:255,y);
#imwrite(noisy_im,"salt_with_0.5p.jpg");

#figure;

#Pepper noise with probability 0.3
#[noisy_im, y] = pepper_noise(r,0.3);
#subplot(1,2,1);
#imshow(noisy_im);
#title("Pepper noise with probability 0.3");
#subplot(1,2,2);
#stem(0:255,y);
#imwrite(noisy_im,"pepper_with_0.3p.jpg");

#figure;

#Uniform noise with probability 1 and a=10,b=20
#[noisy_im, y] = uniform_noise(r,10,20);
#subplot(1,2,1);
#imshow(noisy_im);
#title("Uniform noise with probability 1 and a=10,b=20");
#subplot(1,2,2);
#stem(0:255,y);
#imwrite(noisy_im,"uniform_noise.jpg");

#figure;

#Gaussian + salt_and_pepper noise
#gaussian_noisy=imnoise(r,'gaussian');
#salt_pepper_and_gaussian=imnoise(gaussian_noisy,'salt & pepper');
#subplot(1,2,1);
#imshow(salt_pepper_and_gaussian);
#title("salt and paper + gaussian noise"); 
#x = imhist(salt_pepper_and_gaussian);
#subplot(1,2,2);
#stem(x);
#imwrite(salt_pepper_and_gaussian,"salt_pepper_and_gaussian.jpg");

#figure;

#Salt noise with prob 0.3 and pepper noise with prob 0.2
#[salt_noise,y1]=salt_noise(r,0.3);
#[salt_pepper,y2]=pepper_noise(salt_noise,0.2);
#subplot(1,2,1);
#imshow(salt_pepper);
#title("Salt noise with prob 0.3 and pepper noise with prob 0.2");
#subplot(1,2,2);
#stem(y2);
#imwrite(salt_pepper,"salt_0.3_pepper_0.2.jpg");

#figure;

#Salt and pepper noise with random probability of salt and pepper noise
#[noisy_im,y]=salt_and_pepper(r,rand());
#subplot(1,2,1);
#imshow(noisy_im);
#title("Salt and pepper noise with random probability of salt and pepper noise")
#subplot(1,2,2);
#stem(y);
#imwrite(noisy_im,"salt_pepper_random_prob.jpg");
