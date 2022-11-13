function singleCompare(theta_0, l, g, n)
[th_mem, memx, memy, figx, figy, T, t_fig] = pendExact(theta_0, l, g, n);
[th_mem_, memx_, memy_, figx_, figy_, T_, t_fig_] = pendNotExact(theta_0, l, g, n);

figure()
hold on
scatter(0,0);
drawnow;

axis([-1.2*l,1.2*l,-1.5*l,0.9*l]);
title_text = sprintf('angle = %0.2f deg, T = %0.5f s, L = %0.2f m, G = %0.2f m/s^2, type = both\nblack = Exact, red = Approx',theta_0*360/2/pi,T,l,g);
title(title_text);

for i = 1:1:min(length(figx_),length(figx))
    k = scatter(figx(i),figy(i),'ok');
    l = scatter(figx_(i),figy_(i),'or');
    line1 = line([0, figx(i)], [0,figy(i)]);
    line2 = line([0, figx_(i)], [0,figy_(i)]);
    drawnow;
    pause(0.015)
    delete(k)
    delete(l)
    delete(line1)
    delete(line2)
end

figure()
plot(0.015:0.015:0.015*size(th_mem'),th_mem,'k');
hold on;
plot(0.015:0.015:0.015*size(th_mem_'),th_mem_,'r');
legend('Exact', 'Approx')
title('근사와 실제값의 차이, 같은 조건 한 운동에서의 분석')
ylabel('각도 (degree)')
xlabel('시간 (s)')
end