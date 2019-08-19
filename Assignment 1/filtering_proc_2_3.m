subplot(1,3,1)
showgrey(phonecalc128)
subplot(1,3,2)
showgrey(gausfft(phonecalc128, 0.3))
subplot(1,3,3)
showgrey(gausfft(phonecalc128, 10))
%%
gausfft(phonecalc128, 10)

%%
rows = size(phonecalc128,1);
columns = size(phonecalc128,2);
t = 0.1

[x, y] = meshgrid(-rows/2:rows/2-1, -columns/2:columns/2-1);

gauss = (1/(2*pi*t)) * exp(-(x.*x + y.*y)/(2*t));
gaussHat = (fft2(fftshift(gauss)))
fftshiftad = fftshift(gaussHat)

%%
subplot(1,2,1);
showgrey(deltafcn(128,128))
subplot(1,2,2);
psf = gausfft(deltafcn(128,128), 1); %change this
showfs(fftshift(psf))
variance(psf)
%%
subplot(1,3,1)
showgrey(nallo128)
subplot(1,3,2)
showgrey(gausfft(nallo128, 0.3))
subplot(1,3,3)
showgrey(gausfft(nallo128, 10))

