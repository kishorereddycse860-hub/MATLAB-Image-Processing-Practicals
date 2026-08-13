DIP Lab Practicals

Digital Image Processing lab practicals — MATLAB implementations covering matrix operations, image fundamentals, point processing enhancement, and noise simulation with quality measures.

Course

B.Tech CSE (AI/ML), Marwadi University

Tools
MATLAB (Image Processing Toolbox)
Structure
DIP-Lab-Practicals/
├── README.md
├── .gitignore
├── Unit1_Matrix_Basics/
│   └── 01_Matrix_Operations_And_Functions.m
└── Unit1_Image_Fundamentals/
    ├── 02_Image_Cropping_Rotation_And_RGB_Channels.m
    ├── 03_Image_Enhancement_Point_Processing.m
    └── 04_Image_Noise_Simulation_And_Quality_Measures.m

Note: Sample images (charlie.jpg, abc.jpg) used by these scripts are not included in this repository. To run a script, place the required image in the same folder as the .m file, or update the imread(...) filename to point to your own image.

Practicals
1. Matrix Operations and Functions

File: Unit1_Matrix_Basics/01_Matrix_Operations_And_Functions.m

Covers foundational MATLAB matrix operations used throughout image processing:

Matrix creation, element/row/column indexing, and submatrix slicing
Matrix concatenation (vertical and horizontal)
Built-in matrix functions: determinant, inverse, eigenvalues/eigenvectors, SVD, rank, trace, transpose
Special matrix generators: zeros, ones, eye, rand, randn
Vector creation using the colon operator
2. Image Cropping, Rotation, and RGB Channels

File: Unit1_Image_Fundamentals/02_Image_Cropping_Rotation_And_RGB_Channels.m Required image: charlie.jpg (not included — supply your own or update the filename)

Covers basic image manipulation operations:

Reading an image and converting RGB to grayscale
Live pixel value inspection using impixelinfo
Image cropping via matrix indexing
Image rotation using matrix transpose
Resizing and horizontal concatenation to display images in sequence
Splitting a color image into individual Red, Green, and Blue channels, then recombining them
3. Image Enhancement (Point Processing)

File: Unit1_Image_Fundamentals/03_Image_Enhancement_Point_Processing.m Required image: abc.jpg (not included — supply your own or update the filename)

Covers point processing techniques for image enhancement:

Grayscale conversion and histogram visualization
Histogram equalization for contrast enhancement
Logarithmic transformation (brightens dark regions, compresses bright ones)
Power-law (gamma) transformation (gamma < 1 brightens, gamma > 1 darkens)
4. Simulation of Image Noise and Image Quality Measures

File: Unit1_Image_Fundamentals/04_Image_Noise_Simulation_And_Quality_Measures.m Required image: charlie.jpg (not included — supply your own or update the filename)

Covers noise simulation and quantitative image quality assessment:

Simulating Gaussian (additive), Salt & Pepper (impulse), and Speckle (multiplicative) noise
Comparing noise levels using different variance/density parameters
Measuring image quality degradation using:
MSE (Mean Squared Error)
PSNR (Peak Signal-to-Noise Ratio)
SSIM (Structural Similarity Index)
How to Run
Open any .m file in MATLAB.
Ensure the corresponding sample image (charlie.jpg or abc.jpg) is in the same folder or on the MATLAB path.
Run the script section by section using the Live Editor / Run Section, or run the full file directly.
