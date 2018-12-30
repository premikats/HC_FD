function [A] = coef_mat_bound1_Eight(delta_zeta)
%coef_mat_bound1 Gives the coefficient matrix of the first boundary node

%%
% Inputs:
% delta_zeta = uniform grid spacing

% Output:
% A = coefficient matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 27/12/2018

%% Matrix Formation:

A = zeros(9,9);

for i=1:9
    for j=1:9
        A(j,i) = (delta_zeta^(i-1))*(((i-1)^(j-1))/factorial(j-1));
    end
end

end