function [A] = coef_mat_bound2(delta_zeta)
%coef_mat_bound2 Gives the coefficient matrix of the second boundary node

%%
% Inputs:
% delta_zeta = uniform grid spacing

% Output:
% A = coefficient matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 23/12/2018

%% Matrix Formation:

A = zeros(5,5);

A(1,:) = ones(1,5);
A(2,:) = delta_zeta*[-1,0,1,2,3];
A(3,:) = (delta_zeta^2)*[1/2,0,1/2,2,9/2];
A(4,:) = (delta_zeta^3)*[-1/6,0,1/6,4/3,9/2];
A(5,:) = (delta_zeta^4)*[1/24,0,1/24,2/3,27/8];

end