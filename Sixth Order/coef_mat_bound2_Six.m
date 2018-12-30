function [A] = coef_mat_bound2_Six(delta_zeta)
%coef_mat_bound1 Gives the coefficient matrix of the second boundary node

%%
% Inputs:
% delta_zeta = uniform grid spacing

% Output:
% A = coefficient matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 26/12/2018

%% Matrix Formation:

A = zeros(7,7);

A(1,:) = ones(1,7);
A(2,:) = delta_zeta*[-1,0,1,2,3,4,5];
A(3,:) = (delta_zeta^2)*[1/2,0,1/2,2,9/2,8,25/2];
A(4,:) = (delta_zeta^3)*[-1/6,0,1/6,4/3,9/2,32/3,125/6];
A(5,:) = (delta_zeta^4)*[1/24,0,1/24,2/3,27/8,32/3,625/24];
A(6,:) = (delta_zeta^5)*[-1/120,0,1/120,4/15,81/40,128/15,625/24];
A(7,:) = (delta_zeta^6)*[1/720,0,1/720,4/45,81/80,256/45,3125/144];

end