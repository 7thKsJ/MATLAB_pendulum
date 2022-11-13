function [th_mem, memx, memy, figx, figy, T, t_fig] = pendExact(theta_0, l, g, n)
omega_0 = sqrt(g/l);
theta_func = @(x) 2*asin(sin(theta_0/2)*jacobiSN(omega_0*x,sin(theta_0/2)));
T = 4*sqrt(l/g)*ellipke(sin(theta_0/2));
t_fig = 0:0.015:n*T;
size_ = n*T/0.015;
memx = zeros(size(1:T/0.015)); memy = zeros(size(1:T/0.015)); th_mem = zeros(size(1:size_)); figx = zeros(size(1:size_)); figy = zeros(size(1:size_));

for i = 1:1:size_
    th = theta_func(i*0.015);
    th_mem(i) = th;
    x = sin(th)*l;
    y = -cos(th)*l;
    figx(i) = x;
    figy(i) = y;
    
    if i <= 2*pi/omega_0/0.015
        memy(i) = y;
        memx(i) = x;
    end
end
drawAniPend(memx, memy, figx, figy, T ,l ,g, theta_0,'Exact');
end
