%% Counting pixel ratio

clear all
close all
clc

%% Read the image and convert it into B/W

a = imread('Water_lilies.jpg');
a_gray = rgb2gray(a);
b = imadjust(a_gray);
c = im2bw(b);
figure, imshow(c)

%% Calculate the pixel numbers

[m n] = size(c);
pixel_white = 0;

for i = 1:m
   
    for j = 1:n
       
        if (c(i,j) == 1)
            pixel_white = pixel_white + 1;
        end
        
    end
    
end

%% Calculate the pixel ratio

pixel_total = m*n;
pixel_black = pixel_total - pixel_white;

r_white = pixel_white/pixel_total;
r_black = pixel_black/pixel_total;
