% ==============================================
% Practical 3: Image Enhancement (Point Processing)
% Course: Digital Image Processing
% Topics: Histogram, histogram equalization,
%         logarithmic transformation, power-law
%         (gamma) transformation
% ==============================================

clc;
clear;
close all;

%% Read and Display Original Image
a = imread('abc.jpg');
figure, imshow(a), title('Original Color Image');

%% Grayscale Conversion
b = rgb2gray(a);
figure, imhist(b); title('Image Histogram');
figure, imshow(b); title('Grayscale Image');

%% Histogram Equalization
c = histeq(b);
figure, imshow(c); title('Histogram Equalized Image');
figure, imhist(c); title('Histogram Equalized Image Histogram');

%% Logarithmic Transformation
img = im2double(b); % Convert to double for processing
d = 44; % Scaling constant
log_img = d * log(1 + img);
figure; imshow(log_img); title('Logarithmic Transformation');

%% Power-Law (Gamma) Transformation
gamma = 1.5; % Gamma < 1 brightens the image, > 1 darkens it
c2 = 1; % Scaling constant
gamma_img = c2 * (img.^gamma);
figure; imshow(gamma_img); title(['Power-Law (Gamma = ', num2str(gamma), ')']);
