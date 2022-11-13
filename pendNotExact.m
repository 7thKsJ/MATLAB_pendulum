function [th_mem, memx, memy, figx, figy, T, t_fig] = pendNotExact(theta_0, l, g, n)
omega_0 = sqrt(g/l);
theta_func = @(x)theta_0.*cos(-omega_0.*x+90);
T = 2*pi/omega_0;
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
drawAniPend(memx, memy, figx, figy, T ,l ,g, theta_0,'NotExact');
end
