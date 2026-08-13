% ==============================================
% Practical 2: Image Cropping, Rotation, RGB Channels
% Course: Digital Image Processing
% Topics: Grayscale conversion, cropping, rotation via
%         transpose, image resizing/concatenation,
%         RGB channel splitting and recombination
% ==============================================

clc;
clear;
close all;

%% Read and Display Image
a = imread('charlie.jpg');
figure, imshow(a);
b = rgb2gray(a);
figure, imshow(b);
impixelinfo

%% Image Cropping
c = b(49:159, 52:149);
figure, imshow(c);

%% Image Rotation
d = c';
figure, imshow(d)

%% Display Images in Sequence
e = imresize(d, [111, 98]);
f = horzcat(c, e);
figure, imshow(f);

%% Divide Image into RGB Channels
red = a(:,:,1);   % red channel
green = a(:,:,2); % green channel
blue = a(:,:,3);  % blue channel
cI = cat(3, red, green, blue);

subplot(1,4,1);
imshow(red);
title('red channel image');

subplot(1,4,2);
imshow(green);
title('green channel image');

subplot(1,4,3);
imshow(blue);
title('blue channel image');

subplot(1,4,4);
imshow(cI);
title('color image');

%% Make 4D data
img4D = cat(4, red, red, green, blue);
figure, imshow(img4D);
