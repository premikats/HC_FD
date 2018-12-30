function deriv_n = Deriv_n_mat_Six(n,delta_zeta,N)
% Deriv_n_mat_Six Gives the derivative matrix of any property

%% Inputs:
% n = order of the derivative
% delta_zeta = uniform grid spacing
% N = total number of points

%% Outputs:
% deriv_n = nth order derivative matris

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 26/12/2018

%% Formation of the matrix

deriv_n = zeros(N,N);

for i=1:N
    if i==1
        deriv_n(1,1:7) = Deriv_n_Six(i,n,delta_zeta);
    elseif i==2
        deriv_n(2,1:7) = Deriv_n_Six(i,n,delta_zeta);
    elseif i==3
        deriv_n(3,1:7) = Deriv_n_Six(i,n,delta_zeta);
    elseif i==N-2
        if mod(n,2)==0
            deriv_n(N-2,N-6:N) = fliplr(deriv_n(3,1:7));
        else
            deriv_n(N-2,N-6:N) = -fliplr(deriv_n(3,1:7));
        end
    elseif i==N-1
        if mod(n,2)==0
            deriv_n(N-1,N-6:N) = fliplr(deriv_n(2,1:7));
        else
            deriv_n(N-1,N-6:N) = -fliplr(deriv_n(2,1:7));
        end
    elseif i==N
        if mod(n,2)==0
            deriv_n(N,N-6:N) = fliplr(deriv_n(1,1:7));
        else
            deriv_n(N,N-6:N) = -fliplr(deriv_n(1,1:7));
        end
    else
        deriv_n(i,i-3:i+3) = Deriv_n_Six(i,n,delta_zeta);
    end
end