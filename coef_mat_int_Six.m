function [A] = coef_mat_int_Six()
%coef_mat_int Gives the coefficient matrix of the interior nodes

%%
% Output:
% A = coefficient matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 09/01/2019

%% Matrix Formation:

A = zeros(7,7);

for i=4:7
    for j=1:7
        A(j,i) = (1^(i-4))*(((i-4)^(j-1))/factorial(j-1));
    end
end

for k=1:7
    if mod(k,2)==0
        A(k,1) = -A(k,7);
        A(k,2) = -A(k,6);
        A(k,3) = -A(k,5);
    else
        A(k,1) = A(k,7);
        A(k,2) = A(k,6);
        A(k,3) = A(k,5);
    end
end


end