# ImageEnhance

This project applies two filters to an image to create a blurred and darkened effect. The code reads an image file from a specified path using the imread() function and stores the size of the image in the variables rows and cols.

## Dependencies
- MATLAB 2016b or later
- Image Processing Toolbox

## Blurring Filter
To create the blurring filter, the code first creates a meshgrid using the meshgrid() function with coordinates centered at the image center. Then it calculates the distance between each pixel and the center of the image using the Euclidean distance formula. It then creates a Gaussian blur filter using the exp() function with the calculated distances and a specified sigma value. The filter is normalized using the sum() function, and the resulting filter is stored in the variable blur_filter.

## Darkening Filter
To create the darkening filter, the code calculates the normalized distance between each pixel and the center of the image using the maximum distance in the image. It then applies a quadratic function to the normalized distances and stores the resulting filter in the variable darken_filter.

## Applying the Filters
Finally, the code applies the filters to the original image using the imfilter() function and the .* operator.

## Usage
1) Place the image you want to apply the filters to in the same directory as the script file
2) In MATLAB, navigate to the directory containing the script file and the image
3) Run the script

## Results
The filtered image will be displayed in a new figure window
<img width="470" alt="image" src="https://user-images.githubusercontent.com/68495520/235443660-0f2d2886-c566-463b-a745-74aba3542291.png">


## Note
- You can adjust the sigma value to control the amount of blurring
- You can adjust the quadratic function to control the amount of darkening

## Enjoy!
