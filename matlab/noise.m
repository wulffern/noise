%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fnoise.m
%% Description:   
%% Author:        Carsten Wulff <carsten@wulff.no>
%% Created at:    Tue Feb  3 17:14:03 2009
%% Modified at:   Tue Feb  3 17:24:52 2009
%% Modified by:   Carsten Wulff <carsten@wulff.no>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
N = 2^17;
s = 2;

x = rand(1,N);
xn = randn(1,N);

for i=1:1024
y = x((1:i:N));
yn = xn((1:i:N));

in(i) = i;
y_std(i) = std(y);
x_std(i) = std(x);
yn_std(i) = std(yn);
xn_std(i) = std(xn);
end

subplot(2,1,1),plot(in,x_std,in,y_std);
subplot(2,1,2),plot(in,xn_std,in,yn_std);
