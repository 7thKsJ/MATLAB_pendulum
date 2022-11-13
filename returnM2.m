function [x,y] = returnM2(theta1,l1,theta2,l2)
        y = -l1*cos(theta1) -l2*cos(theta2);
        x = l1*sin(theta1) + l2*sin(theta2);
end