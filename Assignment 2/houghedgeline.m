% houghedgeline calls hougline
function [linepar acc] = ...
    houghedgeline(pic, scale, gradmagnthreshold, nrho, ntheta, nlines, verbose)

magnitude = Lv(discgaussfft(pic, scale));

curves = extractedge(pic, scale, gradmagnthreshold);
[linepar acc] = houghline(curves, magnitude, nrho, ntheta, ...
    gradmagnthreshold, nlines, verbose);

title(['Scale: ' , num2str(scale), '  ', 'nrho: ' , num2str(nrho), '  ', ...
    'ntheta: ', num2str(ntheta), '  ', 'nlines: ', num2str(nlines),  ])
    
    
end


