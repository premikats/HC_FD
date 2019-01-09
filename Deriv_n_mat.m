function deriv_n = Deriv_n_mat(n,N)
% Deriv_n_mat Gives the derivative matrix of any property

%% Inputs:
% n = order of the derivative
% N = total number of points

%% Outputs:
% deriv_n = nth order derivative matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 09/01/2019

%% Formation of the matrix

deriv_n = zeros(N,N);

for i=1:N
    if i==1 || i==2 || i==3
        deriv_n(i,1:5) = Deriv_n(i,n);
    elseif i==4
        deriv_n(i,1:7) = Deriv_n(i,n);
    elseif i==N-3
        if mod(n,2)==0
            deriv_n(N-3,N-6:N) = fliplr(deriv_n(4,1:7));
        else
            deriv_n(N-3,N-6:N) = -fliplr(deriv_n(4,1:7));
        end
    elseif i==N-2
        if mod(n,2)==0
            deriv_n(N-2,N-4:N) = fliplr(deriv_n(3,1:5));
        else
            deriv_n(N-2,N-4:N) = -fliplr(deriv_n(3,1:5));
        end
    elseif i==N-1
        if mod(n,2)==0
            deriv_n(N-1,N-4:N) = fliplr(deriv_n(2,1:5));
        else
            deriv_n(N-1,N-4:N) = -fliplr(deriv_n(2,1:5));
        end
    elseif i==N
        if mod(n,2)==0
            deriv_n(N,N-4:N) = fliplr(deriv_n(1,1:5));
        else
            deriv_n(N,N-4:N) = -fliplr(deriv_n(1,1:5));
        end
    else
        deriv_n(i,i-4:i+4) = Deriv_n(i,n);
    end
end