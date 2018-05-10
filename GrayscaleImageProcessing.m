%Grayscale Image Processing

close all
clear all
clc
%%%%
image = imread('figure.jpg');
gt1 = im2uint16(mat2gray((2.^(1/2)*(14*double(image) + 1).^(3/2))/42));
gt2 = im2uint16(mat2gray((7.^(1/2).*asinh((14.^(1/2)*double(image))./7))/4+(7.^(1/2)*double(image).*(double(image).^2+7/2).^(1/2))./14));
log = im2uint16(mat2gray(log(1 + double(image))));
grimage = rgb2gray(image);
grgt1 = rgb2gray(gt1);
grgt2 = rgb2gray(gt2);
grfog = rgb2gray(log);
%%%%
axes('Position',[0.5,1.05,0.08,0.08])
xlabel('Grayscale Processing Images - YCRZ');
%%%%
subplot(2,4,1);
imshow(image);
title('Original Picture');
subplot(2,4,2);
imhist(grimage,10);
%%%%
subplot(2,4,3);
imshow(gt1);
title('Gray 1');
subplot(2,4,4);
imhist(grgt1,10);
%%%%
subplot(2,4,5);
imshow(gt2);
title('Gray 2');
subplot(2,4,6);
imhist(grgt2,10);
%%%%
subplot(2,4,7);
imshow(log);
title('Fog');
subplot(2,4,8);
imhist(grfog,10);
%%%%

%This Program is Originaly Developed by Yosua Christianov. Any use of the
%%codes in this program or the images are permited and code lisence : CC
%%%https://creativecommons.org/licenses/by/3.0/deed.en_US
%%%%This Program is already submited to https://github.com/YCRZ