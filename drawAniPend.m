function drawAniPend(memx, memy, figx, figy, T ,l,g,theta_0 ,type)
figure()
hold on
scatter(0,0);
drawnow;
axis([-1.2*l,1.2*l,-1.5*l,0.9*l]);
title_text = sprintf('angle = %0.2f deg, T = %0.5f s, L = %0.2f m, G = %0.2f m/s^2, type = %s',theta_0*360/2/pi,T,l,g,type);
title(title_text);

for i = 1:1:length(figx)
    l = line([0 figx(i)], [0 figy(i)]);
    k = scatter(figx(i),figy(i),'ok');
    drawnow;
    pause(0.015)
    delete(k)
    delete(l)
end
scatter(memx, memy);
end