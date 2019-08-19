function [linepar acc] = ...
    houghline(curves, magnitude, ...
    nrho, ntheta, threshold, nlines, verbose)

% Allocate accumulator space
acc = zeros(nrho, ntheta);

% Define a coordinate system in the accumulator space
D = sqrt(size(magnitude, 1)^2 + size(magnitude, 2)^2);
theta = linspace(-pi/2, pi/2, ntheta); 
rho = linspace(-D, D, nrho);

insize = size(curves, 2);
trypointer = 1;
numcurves = 0;

while trypointer <= insize
    polylength = curves(2, trypointer);
    numcurves = numcurves + 1;
    trypointer = trypointer + 1;
    
    for polyidx = 1:polylength
        x = curves(2, trypointer);
        y = curves(1, trypointer);
        
        trypointer = trypointer + 1;
        
        % Check if valid point with respect to threshold
       
        if (magnitude(round(x), round(y)) > threshold)
             value = magnitude(round(x), round(y));
             
             for index_theta = 1 : ntheta
                 rho1 = x * cos(theta(index_theta)) + y * sin(theta(index_theta));
                 [d, rho_index] = min(abs(rho-rho1)); % get the index closest to rho1
                 acc(rho_index, index_theta) = acc(rho_index, index_theta) + 1;  % adding votes
             end
        end
        
    end
end


%acc = binsepsmoothiter(acc, 0, 10);

[pos, value] = locmax8(acc);
[dummy, indexvector] = sort(value);
nmaxima = size(value, 1);

% tar fram de nlines starkaste linjerna, rhoidxacc �r rhoindex i
% ackumulator space, thetaidxacc �r thetaindex i ackumulator space 

% sen tar vi parametrarna f�r de starkaste linjerna
linepar = zeros(2, nlines);
for idx = 1:nlines
    rhoidxacc = pos(indexvector(nmaxima - idx +1), 1);
    thetaidxacc = pos(indexvector(nmaxima - idx +1), 2);
    rho2 = rho(rhoidxacc); 
    theta2 = theta(thetaidxacc);
    linepar(:, idx) = [rho2; theta2]; % l�gg till ny kolumn f�r varje idx   
    % allts� parametrarna f�r resp. linje bland dem som har f�tt flest
    % votes
end

% visual plot
outcurves = zeros(2, 4*nlines);

for idx1 = 1:nlines
    
    rho3 = linepar(1, idx1);
    theta3 = linepar(2, idx1);
    
    %x0 = 0;
    %y0 = rho3/sin(theta3) - (x0*(cos(theta3)/sin(theta3)));
    % x ggr cos theta där dx är ngt stort
    
    dx = D^2;
    dy = rho3/sin(theta3) - (dx*(cos(theta3)/sin(theta3)));
    
    
    x0 = rho3*cos(theta3);
    y0 = rho3*sin(theta3);
    dx=  D^2*(-sin(theta3));
    dy = D^2*(cos(theta3));    
    
    outcurves(1, 4 * (idx1 - 1) + 1) = 0;    % level, not significant
    outcurves(2, 4 * (idx1 - 1) + 1) = 3;    % number of points in the curve
    outcurves(2, 4 * (idx1 - 1) + 2) = x0 - dx;
    outcurves(1, 4 * (idx1 - 1) + 2) = y0 - dy;
    outcurves(2, 4 * (idx1 - 1) + 3) = x0;
    outcurves(1, 4 * (idx1 - 1) + 3) = y0;
    outcurves(2, 4 * (idx1 - 1) + 4) = x0 + dx;
    outcurves(1, 4 * (idx1 - 1) + 4) = y0 + dy;
end 
%save('outcurves.mat', 'outcurves')

subplot(1,2,1)
overlaycurves(magnitude, outcurves);
axis([1 size(magnitude, 2) 1 size(magnitude, 1)]);
end
