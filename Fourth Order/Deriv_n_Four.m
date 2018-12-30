function [deriv_n] = Deriv_n_Four(i,n,delta_zeta)
%Deriv_n_Four Gives the nth derivative of any property with fourth order
%accuracy using Taylor series

% nth order derivative of the ith node = c_i-2 X_i-2 + c_i-1 X_i-1 
% + c_i X_i + c_i+1 X_i+1 + c_i+2 X_i+2 (X = any property like 
% velocity, temperature, density, etc)

%%
% Inputs:
% i = ith node
% n = order of the derivative (1<=n<=4)
% delta_zeta = uniform grid spacing
% N = total number of nodes

% Output:
% deriv_n = coefficient vector (vector consisting of the
% coefficients (c_i-2,c_i-1,c_i,c_i+1,c_i+2))

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 23/12/2018

%%

if n<1 || n>4
    error('Invalid Input. The value of n is out of bounds')
end

%% Matrix Formation:

if i==1
    A = coef_mat_bound1(delta_zeta);
elseif i==2
    A = coef_mat_bound2(delta_zeta);
else
    A = coef_mat_int(delta_zeta);
end

%% Derivative order determination

B = zeros(5,1);
B(n+1,1) = 1;

%% Determination of the coefficients

C = A\B;
deriv_n = transpose(C);

end