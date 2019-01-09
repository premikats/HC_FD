function [coef_vec] = Deriv_n(i,n)
%Deriv_n_Eight Gives the nth derivative of any property with eighth order
%accuracy at the interior nodes, 4th order accuracy at the first two
%boundary nodes and 6th order accuracy at the third boundary node


%%
% Inputs:
% i = ith node
% n = order of the derivative (1<=n<=4)

% Output:
% coef_vec = coefficient vector (vector consisting of the
% coefficients

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 09/01/2019

%%

if n<1 || n>4
    error('Invalid Input. The value of n is out of bounds')
end

%% Matrix Formation:

if i==1
    A = coef_mat_bound1_Four();
    B = zeros(5,1);
elseif i==2
    A = coef_mat_bound2_Four();
    B = zeros(5,1);
elseif i==3
    A = coef_mat_int_Four();
    B = zeros(5,1);
elseif i==4
    A = coef_mat_int_Six();
    B = zeros(7,1);
else
    A = coef_mat_int_Eight();
    B = zeros(9,1);
end

%% Derivative order determination

B(n+1,1) = 1;

%% Determination of the coefficients

C = A\B;
coef_vec = transpose(C);

end