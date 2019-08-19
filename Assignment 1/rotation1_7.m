F = [zeros(60,128); ones(8,128); zeros(60,128)] .* [zeros(128,48) ones(128,32) zeros(128,48)];
alpha = 30
G = rot(F, alpha)

subplot(3,2,1)
showgrey(F)
subplot(3,2,2)
showfs(fft2(F))

subplot(3,2,3)
showgrey(G)
axis on

Ghat = fft2(G);
subplot(3,2,4)
showfs(Ghat)

subplot(3,2,5)
Hhat = rot(fftshift(Ghat), -alpha);
showgrey(log(1+ abs(Hhat)))