function [A] = coef_mat_bound1_Four()
%coef_mat_bound1 Gives the coefficient matrix of the first boundary node

%%

% Output:
% A = coefficient matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 09/01/2019

%% Matrix Formation:

A = zeros(5,5);

for i=1:5
    for j=1:5
        A(j,i) = (1^(i-1))*(((i-1)^(j-1))/factorial(j-1));
    end
end

end