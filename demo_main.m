clc
clear

kernel_size = 51;  % convolution kernel size
mult = 1;

[img_name, img_path] = uigetfile('*.*');
img_raw0 = double(imread([img_path,img_name]))/255;
img_raw = padarray(img_raw0,mult*[kernel_size,kernel_size],0,'both');

T = 120;

mask = imfill(img_raw(:,:,1) > T/255,'holes');  % get the ROI mask using threshold T
mask = imerode(mask, strel('square', 8));       % erode the image to shrink the ROI

img_raw = img_raw .* mask;

tic
raw_img_padded = reflected_padding(img_raw,mask); % filling the background
toc

figure();imshow(raw_img_padded,[])
imwrite(raw_img_padded,['filled_',img_name])