clc; clear; close all;

syms y1 y2 y3 x

a = 0;

y1 = 1 - exp(-x^2);
y2 = log(x);
y3 = a*x - x^3;

figure;
fplot(y1)
xlim([-5 5]); ylim([-5 5]);
grid on;
title('1.(a)')
figure;
fplot(y2)
xlim([-5 5]); ylim([-5 5]);
grid on;
title('1.(b)')
figure;
fplot(y3)
xlim([-5 5]); ylim([-5 5]);
grid on;
% title('1.(c), a positive')
% title('1.(c), a negative')
title('1.(c), a zero')
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