function [coef_vec] = Deriv_n_Eight(i,n,delta_zeta)
%Deriv_n_Six Gives the nth derivative of any property with eighth order
%accuracy using Taylor series

% nth order derivative of the ith node = c_i-4 X_i-4 + c_i-3 X_i-3 + c_i-2 X_i-2 + c_i-1 X_i-1 
% + c_i X_i + c_i+1 X_i+1 + c_i+2 X_i+2 + c_i+3 X_i+3 + c_i+4 X_i+4 (X = any property like 
% velocity, temperature, density, etc)

%%
% Inputs:
% i = ith node
% n = order of the derivative (1<=n<=4)
% delta_zeta = uniform grid spacing
% N = total number of nodes

% Output:
% coef_vec = coefficient vector (vector consisting of the
% coefficients (c_i-4,c_i-3,c_i-2,c_i-1,c_i,c_i+1,c_i+2,c_i+3,c_i+4)

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 27/12/2018

%%

if n<1 || n>8
    error('Invalid Input. The value of n is out of bounds')
end

%% Matrix Formation:

if i==1
    A = coef_mat_bound1_Eight(delta_zeta);
elseif i==2
    A = coef_mat_bound2_Eight(delta_zeta);
elseif i==3
    A = coef_mat_bound3_Eight(delta_zeta);
elseif i==4
    A = coef_mat_bound4_Eight(delta_zeta);
else
    A = coef_mat_int_Eight(delta_zeta);
end

%% Derivative order determination

B = zeros(9,1);
B(n+1,1) = 1;

%% Determination of the coefficients

C = A\B;
coef_vec = transpose(C);

end