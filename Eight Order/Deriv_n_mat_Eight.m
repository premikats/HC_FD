function deriv_n = Deriv_n_mat_Eight(n,delta_zeta,N)
% Deriv_n_mat_Eight Gives the derivative matrix of any property

%% Inputs:
% n = order of the derivative
% delta_zeta = uniform grid spacing
% N = total number of points

%% Outputs:
% deriv_n = nth order derivative matrix

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 27/12/2018

%% Formation of the matrix

deriv_n = zeros(N,N);

for i=1:N
    if i==1 || i==2 || i==3 || i==4
        deriv_n(i,1:9) = Deriv_n_Eight(i,n,delta_zeta);
    elseif i==N-3
        if mod(n,2)==0
            deriv_n(N-3,N-8:N) = fliplr(deriv_n(4,1:9));
        else
            deriv_n(N-3,N-8:N) = -fliplr(deriv_n(4,1:9));
        end
    elseif i==N-2
        if mod(n,2)==0
            deriv_n(N-2,N-8:N) = fliplr(deriv_n(3,1:9));
        else
            deriv_n(N-2,N-8:N) = -fliplr(deriv_n(3,1:9));
        end
    elseif i==N-1
        if mod(n,2)==0
            deriv_n(N-1,N-8:N) = fliplr(deriv_n(2,1:9));
        else
            deriv_n(N-1,N-8:N) = -fliplr(deriv_n(2,1:9));
        end
    elseif i==N
        if mod(n,2)==0
            deriv_n(N,N-8:N) = fliplr(deriv_n(1,1:9));
        else
            deriv_n(N,N-8:N) = -fliplr(deriv_n(1,1:9));
        end
    else
        deriv_n(i,i-4:i+4) = Deriv_n_Eight(i,n,delta_zeta);
    end
end