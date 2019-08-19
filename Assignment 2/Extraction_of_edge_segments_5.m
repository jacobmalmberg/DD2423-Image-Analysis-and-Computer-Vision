% Extraction of edge segments 5
house = godthem256;
scale = 4.00; 
threshold = 0;


edgecurves = extractedge(house, scale, threshold)
% Show the result on screen
overlaycurves(house, edgecurves)
title(['Scale: ', num2str(scale), '     Threshold: ',  num2str(threshold)])