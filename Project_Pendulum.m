clear;clc;
% 함수 작동 (각도(라디안), 길이(m), 중력가속도(m/s^2), 애니메이션 진동횟수)
%% NonExact
% 표 1
pendNotExact(deg2rad(15), 0.1, 9.8, 3);
pendNotExact(deg2rad(45), 0.1, 9.8, 3);
pendNotExact(deg2rad(75), 0.1, 9.8, 3);

% 표 2
pendNotExact(deg2rad(45), 0.1, 9.8, 3);
pendNotExact(deg2rad(45), 1, 9.8, 3);
pendNotExact(deg2rad(45), 10, 9.8, 3);

%% Exact
% 표 3
pendExact(deg2rad(15), 0.1, 9.8, 3);
pendExact(deg2rad(45), 0.1, 9.8, 3);
pendExact(deg2rad(75), 0.1, 9.8, 3);


%%
% 표4
g = 9.8; l = 0.1;   
omega_0 = sqrt(g/l);
T1 = @(theta_0) 2*pi/omega_0;
T2 = @(theta_0) 4*sqrt(l/g)*ellipke(sind(theta_0/2));
T1_mem = zeros(size(1:90)); T2_mem = zeros(size(1:90));
k = 1:1:90;
for i = k
    T1_mem(i) = T1(i);
    T2_mem(i) = T2(i);
end

plot(k, T1_mem)
hold on
plot(k, T2_mem);
legend('Aprrox', 'Exact')
axis([0,90,0,0.85]);
title('근사와 실제값의 차이')
xlabel('각도 (degree)')
ylabel('주기 (s)')
%%
%표5
singleCompare(deg2rad(45), 0.1, 9.8, 5) 

%%
%표 6
clear;clc;close all;
doublePend(1,1,0.2,0.3,deg2rad(30),deg2rad(155),9.8,'blue','green');

%표 7
doublePend(1,1,0.2,0.3,deg2rad(35),deg2rad(160),9.8,'blue','green');
