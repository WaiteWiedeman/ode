clc; clear; close all;

global B a  % circadian clock

B = 1; a = 1;

options = odeset('RelTol',1e-10,'AbsTol',[1e-10 1e-10]);
[T,y] = ode89(@hw6_prob3_model,[-5 5],[-1 0],options);

figure(3)
clf
%subplot(2,1,2)
plot(T,y(:,1),'-',T,y(:,2),'--','LineWidth',2.5)
hold on; grid on;
title('u and v solutions','FontSize',16)
legend('u','v')
xlabel('Time [s]','FontSize',16)
ylabel('u and v [a.u.]','FontSize',16)
xlim([-5 5])
set(gca,'fontsize',16)

figure(2)
clf
plot(y(:,1),y(:,2),'LineWidth',3)
hold on; grid on;
plot(y(1,1),y(1,2),'ro','MarkerFaceColor','r','MarkerSize',10)
title('u vs v','FontSize',16)
xlabel('u','FontSize',16)
ylabel('v','FontSize',16)
set(gca,'FontSize',16)

CR = [T(:) y(:,1) y(:,2)];
