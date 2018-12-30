function [A] = coef_mat_bound1(delta_zeta)
%coef_mat_bound1 Gives the coefficient matrix of the first boundary node

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
A(2,:) = delta_zeta*[0,1,2,3,4];
A(3,:) = (delta_zeta^2)*[0,1/2,2,9/2,8];
A(4,:) = (delta_zeta^3)*[0,1/6,4/3,9/2,32/3];
A(5,:) = (delta_zeta^4)*[0,1/24,2/3,27/8,32/3];

end