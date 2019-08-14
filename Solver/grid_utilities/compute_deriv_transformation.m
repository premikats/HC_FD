function [dp_ddir_mat] = compute_deriv_transformation(p,NI,NJ,NK,dir)
% compute_deriv_transformation Computes the derivatives of the physical
% space with respect to the computation space

%% Inputs:
% p = direction in the physical space (x,y,z)
% NI = number points along the ith direction in the computational space
% NJ = number points along the jth direction in the computational space
% NK = number points along the kth direction in the computational space
% dir = direction in the computational space
% (zeta:dir=1;eta:dir=2,epsilon:dir=3)

%% Outputs:
% dp_ddir_mat = matrix consisting of the transformation derivatives

%%
% written by Premika T.S. and Saarthak Gupta
% last edited - 10/01/2019

%%

dp_ddir_mat = zeros(NI,NJ,NK);

if dir == 1
    for jj=1:1:NJ
        for kk=1:1:NK
            p_dir=p(:,jj,kk);
            dp_ddir=Deriv_n_mat(1,NI)*p_dir;
            
            for ii=1:1:NI
                dp_ddir_mat(ii,jj,kk)=dp_ddir(ii);
            end
        end
    end
elseif dir == 2
    for ii=1:1:NI
        for kk=1:1:NK
            p_dir=p(ii,:,kk);
            dp_ddir=Deriv_n_mat(1,NJ)*p_dir;
            
            for jj=1:1:NJ
                dp_ddir_mat(ii,jj,kk)=dp_ddir(jj);
            end
        end
    end
else
    for ii=1:1:NI
        for jj=1:1:NJ
            p_dir=p(ii,jj,:);
            dp_ddir=Deriv_n_mat(1,NK)*p_dir;
            
            for kk=1:1:NK
                dp_ddir_mat(ii,jj,kk)=dp_ddir(kk);
            end
        end
    end
end
end

