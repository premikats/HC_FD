function deriv_n = Deriv_n_mat_Four(n,delta_zeta,N)
% Deriv_n_mat_Four Gives the derivative matrix of any property

%% Inputs:
% n = order of the derivative
% delta_zeta = uniform grid spacing
% N = total number of points

%% Outputs:
% deriv_n = nth order derivative matris

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 23/12/2018

%% Formation of the matrix

deriv_n = zeros(N,N);

for i=1:N
    if i==1
        deriv_n(1,1:5) = Deriv_n_Four(i,n,delta_zeta);
    elseif i==2
        deriv_n(2,1:5) = Deriv_n_Four(i,n,delta_zeta);
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
        deriv_n(i,i-2:i+2) = Deriv_n_Four(i,n,delta_zeta);
    end
end