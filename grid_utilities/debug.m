clear all;
clc;

addpath('../setup_derivs/');

NI = 15;
NJ = 25;
NK = 35;

for ii=1:1:NI
    for jj=1:1:NJ
        for kk=1:1:NK
            x(ii,jj,kk) = tanh((ii-NI/2)/(NI/4));
            y(ii,jj,kk) = tanh((jj-NJ/2)/(NJ/4));
            z(ii,jj,kk) = tanh((kk-NK/2)/(NK/4));
        end
    end
end

% m = 1;
% while m<=(NI*NJ*NK)
%     for ii=1:1:NI
%         for jj=1:1:NJ
%             for kk=1:1:NK
%                 x_vec(m) = x(ii,jj,kk);
%                 y_vec(m) = y(ii,jj,kk);
%                 z_vec(m) = z(ii,jj,kk);
%                 m=m+1;
%             end
%         end
%     end
% end

%% zeta 
x_zeta=zeros(NI,1);
y_zeta=zeros(NI,1);
z_zeta=zeros(NI,1);

for jj=1:1:NJ
    for kk=1:1:NK
        x_zeta=x(:,jj,kk);
        y_zeta=y(:,jj,kk);
        z_zeta=z(:,jj,kk);
        
        dx_dzeta=Deriv_n_mat(1,NI)*x_zeta;
        dy_dzeta=Deriv_n_mat(1,NI)*y_zeta;
        dz_dzeta=Deriv_n_mat(1,NI)*z_zeta;
        
        for ii=1:1:NI
            dx_dzeta_mat(ii,jj,kk)=dx_dzeta(ii);
            dy_dzeta_mat(ii,jj,kk)=dy_dzeta(ii);
            dz_dzeta_mat(ii,jj,kk)=dz_dzeta(ii);
        end
    end
end
