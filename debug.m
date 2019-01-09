clear all
clc
close all

num_points = 200;

c = 1:1:num_points;
x = tanh((c-(num_points)/2)/25);

fx = sin(x);
dfx = cos(x);

deriv_x = Deriv_x_mat(1,x);
df_x = deriv_x*transpose(fx);

plot(x,dfx,x,df_x)

max(abs(df_x-dfx'))/max(abs(df_x))