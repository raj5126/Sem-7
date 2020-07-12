% Take your own photo
im = imread("my_image.jpg");

%1. Flip image vertically
row = size(im,1);
im_flipped_image = NaN(size(im));
for i=1:row,
    im_flipped_image(i,:,:) = im(row-i+1,:,:);
end
subplot(2,2,1);
imshow(uint8(im_flipped_image));
title("Flipped Image(vertically)")

%2. Create mirror image
col = size(im,2);
im_mirrored_image = NaN(size(im));
for j=1:col,
  im_mirrored_image(:,j,:) = im(:,col-j+1,:);
end
subplot(2,2,2);
imshow(uint8(im_mirrored_image));
title("Mirrored image(horizontally)");

%3. Rotate the image by 90 degree
im_rotate_90_deg = NaN(col,row,3);
for i=1:row,
    im_rotate_90_deg(:,col-i+1,:) = im(i,:,:);
end
subplot(2,2,3);
imshow(uint8(im_rotate_90_deg));
title("Rotated 90 degree img");

%4. Rotate the image by 270 degree
im_rotate_270_deg = NaN(col,row,3);
for i=1:row,
  im_rotate_270_deg(:,i,:) = flip(im(i,:,:));
end
subplot(2,2,4);
imshow(uint8(im_rotate_270_deg));
title("Rotated 270 degree img");
    