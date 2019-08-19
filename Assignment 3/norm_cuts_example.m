colour_bandwidth = 9; % color bandwidth
radius = 3;              % maximum neighbourhood distance
ncuts_thresh = 2;      % cutting threshold
min_area = 500;          % minimum area of segment
max_depth = 4;           % maximum splitting depth
scale_factor = 0.4;      % image downscale factor
image_sigma = 2.0;       % image preblurring scale

I = imread('tiger1.jpg');
I = imresize(I, scale_factor);
Iback = I;
d = 2*ceil(image_sigma*2) + 1;
h = fspecial('gaussian', [d d], image_sigma);
I = imfilter(I, h);


segm = norm_cuts_segm(I, colour_bandwidth, radius, ncuts_thresh, min_area, max_depth);
Inew = mean_segments(Iback, segm);
I = overlay_bounds(Iback, segm);


figure
subplot(1,2,1); imshow(Inew); 
title(['       color bw = ', num2str(colour_bandwidth), '. radius = ', num2str(radius), '. ncuts thresh= '...
    num2str(ncuts_thresh), '. min area= ', num2str(min_area), '. max depth= ', num2str(max_depth)]);
subplot(1,2,2); imshow(I);
imwrite(Inew,'result/normcuts1.png')
imwrite(I,'result/normcuts2.png')
