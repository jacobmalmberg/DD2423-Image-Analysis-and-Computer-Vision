img = phonecalc128;
powerimage = pow2image(img, 10^-10);
randph = randphaseimage(img);
subplot(1,3,1)
showgrey(img)
subplot(1,3,2)
showgrey(powerimage)
subplot(1,3,3)
showgrey(randph)
