#Perform intensity slicing to separate out red green baloons form 
#the image 1(check: lab3images) given.
im = imread('lab3images/image1.jpg');
imshow(im);
figure;
slice_image = NaN(size(im));
row = size(im,1);
col = size(im,2);
for i=1:row,
  for j=1:col,
    if (im(i,j,1)<=255 && im(i,j,1)>=180 && im(i,j,2)>=0 && im(i,j,2)<=100 && im(i,j,3)>=0 && im(i,j,3)<=50)
      slice_image(i,j,:) = im(i,j,:);
    elseif (im(i,j,2)>=180 && im(i,j,2)<=255 && im(i,j,1)<=160 && im(i,j,1)>=100 && im(i,j,3)>=0 && im(i,j,3)<=70)
      slice_image(i,j,:) = im(i,j,:);
    else
      slice_image(i,j,1) = 0;
      slice_image(i,j,2) = 0;
      slice_image(i,j,3) = 0;
    endif
  endfor
endfor
slice_image =uint8(slice_image);
imshow(slice_image);
