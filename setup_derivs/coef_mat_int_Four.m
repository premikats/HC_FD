function [A] = coef_mat_int_Four()
%coef_mat_int Gives the coefficient matrix of the interior nodes

%%
% Output:
% A = coefficient matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 09/01/2019

%% Matrix Formation:

A = zeros(5,5);

for i=3:5
    for j=1:5
        A(j,i) = (1^(i-3))*(((i-3)^(j-1))/factorial(j-1));
    end
end

for k=1:5
    if mod(k,2)==0
        A(k,1) = -A(k,5);
        A(k,2) = -A(k,4);
    else
        A(k,1) = A(k,5);
        A(k,2) = A(k,4);
    end
end

end