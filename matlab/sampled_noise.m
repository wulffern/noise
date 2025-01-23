%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fsampled_noise.m
%% Description:   
%% Author:        Carsten Wulff <carsten@wulff.no>
%% Created at:    Tue Feb  3 17:14:03 2009
%% Modified at:   Tue Feb  3 20:16:28 2009
%% Modified by:   Carsten Wulff <carsten@wulff.no>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
N = 2^17;
s = 2;

x = rand(1,N);
xn = randn(1,N);

for i=1:1023
y = x((1:1024-i:N));
yn = xn((1:1024-i:N));

in(i) = length(y);
y_std(i) = std(y);
x_std(i) = std(x);
yn_std(i) = std(yn);
xn_std(i) = std(xn);
std_std(i) = std(yn_std(1:i));
end

subplot(3,1,1),semilogx(in,x_std,in,y_std);
subplot(3,1,2),semilogx(in,xn_std,in,yn_std);
subplot(3,1,3),semilogx(in,std_std);
