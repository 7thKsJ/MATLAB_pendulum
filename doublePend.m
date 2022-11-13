function [x1, x2, y1, y2, t_mem] = doublePend(m1, m2, l1, l2, t1, t2, g,c1,c2)
syms t_1(t) t_2(t)
t_1_diff = diff(t_1);
t_2_diff = diff(t_2);
t_1_diff2 = diff(t_1,2);
t_2_diff2 = diff(t_2,2);
eqn1 = t_1_diff2(t) == (g/l1*(sin(t_2(t)).*cos(t_1(t)-t_2(t))-(1+m1/m2).*sin(t_1(t))) - t_2_diff(t).^2.*l2/l1*sin(t_1(t)-t_2(t)) - t_1_diff(t).^2.*sin(t_1(t)-t_2(t)).*cos(t_1(t)-t_2(t)))./(1+m1/m2-cos(t_1(t)-t_2(t)).^2);
eqn2 = t_2_diff2(t) == 1./(-1*m2*l2) .* ( m2*l1*t_1_diff2.*cos(t_1(t) - t_2(t)) - m2*l1.*t_1_diff(t).^2.*sin(t_1(t) - t_2(t)) + m2*g*sin(t_2(t)));

[V,S] = odeToVectorField(eqn1,eqn2);
S;

figure();
M = matlabFunction(V,'vars',{'t','Y'});
initCond = [t1 0 t2 0];
sols = ode113(M,[0 20],initCond);
title_text = sprintf('이중진자 각도 움직임\nAngular1=%0.2f rad, Angular2=%0.2f rad\nlength1=%0.2f m, length2=%0.2f m\n Mass1=%0.2f, Mass2=%0.2f',t1,t2,l1,l2,m1,m2);
title(title_text);
xlabel('시간(s)');
ylabel('각(rad)');
hold on;
plot(sols.x(:,1:300), sols.y(1,1:300));
plot(sols.x(:,1:300), sols.y(3,1:300));
legend('theta_1','theta_2');

t1_mem = sols.y(1,:);
t2_mem = sols.y(3,:);

t_mem = sols.x;


x1 = zeros(size(t_mem')); x2 = zeros(size(t_mem'));
y1 = zeros(size(t_mem')); y2 = zeros(size(t_mem'));

for i = 1:1:size(t_mem')
    [x1(i), y1(i)] = returnM1(t1_mem(i),l1);
    [x2(i), y2(i)] = returnM2(t1_mem(i),l1,t2_mem(i),l2);
end

figure()
l = l1+l2;
scatter(0,0,'ok');
axis([-1.1*l,1.1*l,-1.1*l,l]);
hold on
title_txt = sprintf('DoublePendulumMotion\nAngular1=%0.2f rad, Angular2=%0.2f rad\nlength1=%0.2f m, length2=%0.2f m\n Mass1=%0.2f, Mass2=%0.2f',t1,t2,l1,l2,m1,m2);
title(title_txt)


for i = 1:1:size(t_mem')-1
    m1 = scatter(x1(i), y1(i), c1);
    m2 = scatter(x2(i), y2(i), c2);
    p = plot(x2(1:i), y2(1:i), 'color',c2);


    l = line([0 x1(i)], [0 y1(i)],'color', c1);
    l2 = line([x1(i), x2(i)], [y1(i), y2(i)], 'color', c2);
    drawnow;
    pause((t_mem(i+1)- t_mem(i)));
    delete(m1);
    delete(m2);
    delete(p);
    delete(l);
    delete(l2);
    
end
p = plot(x2(1:i), y2(1:i), 'color',c2);
end
