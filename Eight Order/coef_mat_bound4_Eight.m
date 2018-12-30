function [A] = coef_mat_bound4_Eight(delta_zeta)
%coef_mat_bound1 Gives the coefficient matrix of the fourth boundary node

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

for i=4:9
    for j=1:9
        A(j,i) = (delta_zeta^(i-4))*(((i-4)^(j-1))/factorial(j-1));
    end
end

for k=1:9
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