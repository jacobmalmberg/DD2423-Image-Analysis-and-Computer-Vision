function pixels = gausfft(pic, t)
%GAUSFFT Summary of this function goes here
%   Detailed explanation goes here
rows = size(pic,1);
columns = size(pic,2);

[x, y] = meshgrid(-rows/2:rows/2-1, -columns/2:columns/2-1);

gauss = (1/(2*pi*t)) * exp(-(x.*x + y.*y)/(2*t))

picHat = fft2(pic);
gaussHat = (fft2(fftshift(gauss)));
multiple = picHat.*gaussHat;
pixels = real(ifft2(multiple));

end

