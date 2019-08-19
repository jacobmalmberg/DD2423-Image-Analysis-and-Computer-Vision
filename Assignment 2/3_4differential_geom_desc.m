%% 
dxxmask =  [0 0 0 0 0; 0 0 0 0 0; 0 1 -2 1 0; 0 0 0 0 0; 0 0 0 0 0];
[x y] = meshgrid(-5:5, -5:5);
test = filter2(dxxmask, x.^2, 'same');

%%
house = godthem256;
scale = 64.0;
contour(Lvvtilde(discgaussfft(house, scale), 'same'), [0 0]);
axis('image')
axis('ij')
title(['Scale: ', num2str(scale)])
showgrey(house);
%%
scale = 0.0001;
tools = few256;
subplot(2,3,1)
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0);
title(['Scale: ', num2str(scale)])

scale = 1.0;
subplot(2,3,2)
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0);
title(['Scale: ', num2str(scale)])

scale = 4.0;
subplot(2,3,3)
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0);
title(['Scale: ', num2str(scale)])

scale = 16.0;
subplot(2,3,4)
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0);
title(['Scale: ', num2str(scale)])

scale = 64.0;
subplot(2,3,5)
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0);
title(['Scale: ', num2str(scale)])
