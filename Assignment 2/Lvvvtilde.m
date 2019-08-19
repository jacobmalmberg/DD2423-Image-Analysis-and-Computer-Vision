function Lvvv = Lvvvtilde(inpic, shape)
if (nargin < 2)
    shape = 'same';
end

dxmask = [0 0 0 0 0; 0 0 0 0 0; 0 -0.5 0 0.5 0; 0 0 0 0 0; 0 0 0 0 0]; 
dxxmask = [0 0 0 0 0; 0 0 0 0 0; 0 1 -2 1 0; 0 0 0 0 0; 0 0 0 0 0];

% second order derivatives
dymask = dxmask'; 
dyymask = dxxmask';

dxymask = conv2(dxmask, dymask, shape);
dxxxmask = conv2(dxmask, dxxmask, shape);
dyyymask = conv2(dymask, dyymask, shape);
dxxymask = conv2(dxxmask, dymask, shape);
dxyymask = conv2(dyymask, dxmask, shape);


Lx = filter2(dxmask, inpic, shape);
Ly = filter2(dymask, inpic, shape);
%Lxx = filter2(dxxmask, inpic, shape);
%Lxy = filter2(dxymask, inpic, shape);
Lyy = filter2(dyymask, inpic, shape);
Lyyy = filter2(dyyymask, inpic, shape);
Lxxx = filter2(dxxxmask, inpic, shape);
Lxxy = filter2(dxxymask, inpic, shape);
Lxyy = filter2(dxyymask, inpic, shape);


Lvvv = (Lx .^3).*Lxxx + 3 * (Lx.^2).* Ly.* Lxxy + 3*Lx.*(Ly.^2).*Lxyy + (Ly.^3).* Lyyy;
end
