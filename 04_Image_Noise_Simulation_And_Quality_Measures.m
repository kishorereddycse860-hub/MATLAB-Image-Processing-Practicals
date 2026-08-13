% ==============================================
% Practical 4: Simulation of Image Noise and
%              Image Quality Measures
% Course: Digital Image Processing
% Topics: Gaussian noise, Salt & Pepper (impulse)
%         noise, Speckle noise, and quality metrics
%         (MSE, PSNR, SSIM)
% ==============================================

clc;
clear;
close all;

% Image Noise: Gaussian, Poisson,
% Impulse Noise (Salt & Pepper), Speckle
I = imread("charlie.jpg");
figure, imshow(I), title("Original Color Image");

%% Change Image to Grayscale
GS = rgb2gray(I);
figure, imshow(GS); title("Grayscale Image");

%% Simulating Gaussian Noise (Additive Noise)
NGI = imnoise(GS,"gaussian",0,0.001);
figure, imshow(NGI); title("Image with Gaussian Noise");
NGI1 = imnoise(GS,"gaussian",0,0.002);
figure, imshow(NGI1); title("Image with Gaussian Noise1");

%% Simulating Impulse Noise
NII = imnoise(GS,"salt & pepper",0.005);
figure, imshow(NII); title("Image with Impulse (Salt & Pepper) Noise");

%% Simulating Speckle Noise (Multiplicative Noise)
NSI = imnoise(GS,'speckle',0.002);
figure, imshow(NSI); title("Image with Speckle Noise");

%% Image Quality Measures - MSE, PSNR, SSIM for Gaussian Noisy Image
% MSE
MSE = immse(GS,NGI)
MSE1 = immse(GS, NGI1)

% PSNR
PSNR = psnr(GS,NGI)
PSNR1 = psnr(GS,NGI1)

% SSIM
SSIM = ssim(GS,NGI)
SSIM1 = ssim(GS,NGI1)
