subplot(3,3,1)
office = office256; 
showgrey(office)

subplot(3,3,2)
add = gaussnoise(office, 16);
showgrey(add) 

subplot(3,3,3)
sap = sapnoise(office, 0.1, 255);
showgrey(sap)

subplot(3,3,5)
smoothed = gausfft(add, 0.1)
showgrey(smoothed)
title('t = 0.1')

subplot(3,3,6)
smoothsap = gausfft(add, 0.1)
showgrey(smoothsap)
title('t = 0.1')

subplot(3,3,8)
s = gausfft(add, 10);
showgrey(s);
title('t = 10' )

subplot(3,3,9)
smoothsap1 = gausfft(add, 10)
showgrey(smoothsap1)
title('t = 10')


%% median filtering

subplot(3,3,1)
office = office256; 
showgrey(office)

subplot(3,3,2)
add = gaussnoise(office, 16);
showgrey(add) 

subplot(3,3,3)
sap = sapnoise(office, 0.1, 255);
showgrey(sap)

subplot(3,3,5)
smoothed = medfilt(add, 1,1)
showgrey(smoothed)
title('window 1x1')


subplot(3,3,8)
smoothed = medfilt(add, 10,10)
showgrey(smoothed)
title('window 10x10')


subplot(3,3,6)
smoothsap = medfilt(add, 1,1)
showgrey(smoothsap)
title('window 1x1')

subplot(3,3,9)
smoothsap1 = medfilt(add, 10,10)
showgrey(smoothsap1)
title('window 10x10')

%% low pass filtering
subplot(3,3,1)
office = office256; 
showgrey(office)

subplot(3,3,2)
add = gaussnoise(office, 16);
showgrey(add) 

subplot(3,3,3)
sap = sapnoise(office, 0.1, 255);
showgrey(sap)

subplot(3,3,5)
smoothed = ideal(add, 0.1)
showgrey(smoothed)
title('cutoff freq 0.1')


subplot(3,3,8)
smoothed = ideal(add, 1000)
showgrey(smoothed)
title('cutoff freq 1000')


subplot(3,3,6)
smoothsap = ideal(add, 0.1)
showgrey(smoothsap)
title('cutoff freq 0.1')

subplot(3,3,9)
smoothsap1 = ideal(add, 1000)
showgrey(smoothsap1)
title('cutoff freq 1000')



%%
sdev = 200
matris = sdev * randn(size(office256));
