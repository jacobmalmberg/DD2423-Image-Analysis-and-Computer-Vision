F = [zeros(56, 128); ones(16, 128); zeros(56, 128)];
G = F';

subplot(1,3,1)
showgrey(F .*G)
subplot(1,3,2)
showfs(fft2(F .*G))

subplot(1,3,3)
Fhat = fftshift(fft2(F));
Ghat = fftshift(fft2(G));
convA = conv2(Fhat, Ghat, 'same');
convA = convA/(size(F,1)^2);
convA = fftshift(convA);
showfs(convA)

