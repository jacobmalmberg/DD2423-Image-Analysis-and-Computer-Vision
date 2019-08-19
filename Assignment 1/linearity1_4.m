F = [zeros(56, 128); ones(16, 128); zeros(56, 128)];
G = F';
H = F+2*G;

Fhat = fft2(F); 
Ghat = fft2(G);
Hhat = fft2(H);

subplot(3,3,4);
showgrey(log(1 + abs(Fhat)));
subplot(3,3,5);
showgrey(log(1 + abs(Ghat)));
subplot(3,3,6);
showgrey(log(1 + abs(Hhat)));

subplot(3,3,1);
showgrey(F);
subplot(3,3,2);
showgrey(G);
subplot(3,3,3);
showgrey(H);

subplot(3,3,9);
showgrey(log(1 + abs(fftshift(Hhat))));