clc; clear; close all;

syms y1 y2 y3 x

a = 1;

y1 = 1 - exp(-x^2);
y2 = log(x);
y3 = a*x - x^3;

figure;
fplot(y1)
xlim([-5 5]); ylim([-5 5]);
grid on;
figure;
fplot(y2)
xlim([-5 5]); ylim([-5 5]);
grid on;
figure;
fplot(y3)
xlim([-5 5]); ylim([-5 5]);
grid on;
equil = solve(y3 == 0,x);

%% 
clc; clear; close all;
%a
A = [1 1; 3 -1];
Aeigs = eig(A)
detA = det(A)
trA = trace(A)
%b
B = [2 1; 2 3];
Beigs = eig(B)
detB = det(B)
trB = trace(B)
%c
C = [-1 -2; 2 -1];
Ceigs = eig(C)
detC = det(C)
trC = trace(C)
%d
D = [1 2; -2 1];
Deigs = eig(D)
detD = det(D)
trD = trace(D)
%e
E = [0 -1; 2 0];
Eeigs = eig(E)
detE = det(E)
trE = trace(E)