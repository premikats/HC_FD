function deriv_x = Deriv_x_mat(n,x)
%Deriv_x_mat Gives the transformed derivative matrix of nth order in the
%original space

%% Inputs:

% n = nth order derivative
% x = original spatial discretization (uniform or non-uniform)
% f = functional value at the locations

%% Outputs:

% deriv_x = derivative matrix in the original space

%% 
% written by Premika T.S. and Saarthak Gupta
% last edited - 07/01/2019

%%

N = length(x);

deriv_n = Deriv_n_mat(n,N);
d_x = deriv_n*transpose(x);

for ii=1:length(d_x)
    if d_x(ii,1) == 0
        d_x(ii,1) = eps;
    end
end

deriv_x = zeros(N,N);
for jj=1:N
    deriv_x(jj,:) = (1/d_x(jj))*deriv_n(jj,:);
end

end

