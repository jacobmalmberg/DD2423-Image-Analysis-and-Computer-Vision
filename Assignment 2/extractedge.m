%% 5 extraction of edge segments
function curves = extractedge(inpic, scale, threshold, shape)
if (nargin <4)
    shape = 'same';
end

zeropic = Lvvtilde(discgaussfft(inpic, scale), shape);
Lvvvtil = Lvvvtilde(discgaussfft(inpic, scale), shape);
Lv1 = Lv(discgaussfft(inpic, scale), shape)

maskpic1 = (Lvvvtil < 0) -0.1;
maskpic2 = (Lv1 > threshold) -0.1;

curves = zerocrosscurves(zeropic, maskpic1);
curves = thresholdcurves(curves, maskpic2);
end
