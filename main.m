% Load the image
img = imread('C:\Users\user\Desktop\dsp project\images\paris.jpg');

% Get the size of the image
[rows, cols, ~] = size(img);

% Create a meshgrid with coordinates centered at the image center
[X, Y] = meshgrid(1:cols, 1:rows);
x0 = cols/2;
y0 = rows/2;
d = sqrt((X-x0).^2 + (Y-y0).^2);

% Create a blurring filter that decreases the blur amount as distance from the center increases
sigma = 45;
blur_filter = exp(-(d.^2)/(2*sigma^2));
blur_filter = blur_filter ./ sum(blur_filter(:));

% Create a darkening filter that decreases the amount of darkening as distance from the center increases
darken_filter = (1 - (d/max(d(:)))).^2;

% Apply the filters to the image
blurred_img = imfilter(img, blur_filter);
darkened_img = uint8(double(img) .* darken_filter);

% Display the results
figure;
subplot(2,2,1);
imshow(img);
title('Original Image');

subplot(2,2,2);
imshow(blurred_img);
title('Blurred Image');

subplot(2,2,3);
imshow(darkened_img);
title('Darkened Image');

