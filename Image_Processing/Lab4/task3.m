#Perform histogram equalization of equalized image obtained.
# Is second pass of the histogram equalization process useful? Justify your 
#answer.
r = imread('lab4Images/my_dark_photo.jpg');
[s1, final1] = imequalizecolorhist(r);
[s2, final2] = imequalizecolorhist(final1);

subplot(1,2,1);
imshow(final1);
title("First Pass");
subplot(1,2,2);
plot_hist(final1);

figure;

subplot(1,2,1);
imshow(final2);
title("Second Pass");
subplot(1,2,2);
plot_hist(final2);




