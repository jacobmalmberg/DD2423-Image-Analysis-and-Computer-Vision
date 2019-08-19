F = [zeros(60,128); ones(8,128); zeros(60,128)] .* [zeros(128,48) ones(128,32) zeros(128,48)];
Fprev = [zeros(56, 128); ones(16, 128); zeros(56, 128)];
Gprev = Fprev';

subplot(2,2,3)
showgrey(F)
title('scaled')
subplot(2,2,4)
showfs(fft2(F))
title('scaled')

subplot(2,2,1)
showgrey(Fprev .*Gprev)
title('source')
subplot(2,2,2)
showfs(fft2(Fprev .*Gprev))
title('source')