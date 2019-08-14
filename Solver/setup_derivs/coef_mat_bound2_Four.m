function [A] = coef_mat_bound2_Four()
%coef_mat_bound2 Gives the coefficient matrix of the second boundary node

%%
% Output:
% A = coefficient matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 09/01/2019

%% Matrix Formation:

A = zeros(5,5);

for i=2:5
    for j=1:5
        A(j,i) = (1^(i-2))*(((i-2)^(j-1))/factorial(j-1));
    end
end

for k=1:5
    if mod(k,2)==0
        A(k,1) = -A(k,3);
    else
        A(k,1) = A(k,3);
    end
end

end