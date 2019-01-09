function [A] = coef_mat_int_Eight()
%coef_mat_bound1 Gives the coefficient matrix of the interior node

%%
% Output:
% A = coefficient matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 09/01/2019

%% Matrix Formation:

A = zeros(9,9);

for i=5:9
    for j=1:9
        A(j,i) = (1^(i-5))*(((i-5)^(j-1))/factorial(j-1));
    end
end

for k=1:9
    if mod(k,2)==0
        A(k,1) = -A(k,9);
        A(k,2) = -A(k,8);
        A(k,3) = -A(k,7);
        A(k,4) = -A(k,6);
    else
        A(k,1) = A(k,9);
        A(k,2) = A(k,8);
        A(k,3) = A(k,7);
        A(k,4) = A(k,6);
    end
end


end