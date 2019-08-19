
%%
function Lvv = Lvvtilde(inpic, shape)
if (nargin < 2)
    shape = 'same';
end

% first order derivatives
dxmask = [0 0 0 0 0; 0 0 0 0 0; 0 -0.5 0 0.5 0; 0 0 0 0 0; 0 0 0 0 0]; 
dxxmask = [0 0 0 0 0; 0 0 0 0 0; 0 1 -2 1 0; 0 0 0 0 0; 0 0 0 0 0];

% second order derivatives
dymask = dxmask'; 
dyymask = dxxmask';

dxymask = conv2(dxmask, dymask, shape);

Lx = filter2(dxmask, inpic, shape);
Ly = filter2(dymask, inpic, shape);
Lxx = filter2(dxxmask, inpic, shape);
Lxy = filter2(dxymask, inpic, shape);
Lyy = filter2(dyymask, inpic, shape);

Lvv = (Lx.^2).*Lxx + 2.*Lx.*Ly.*Lxy + (Ly.^2).*Lyy;
end
    
