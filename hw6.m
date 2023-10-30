clc; clear; close all;
syms v u B a 

du = v;
dv = B*u - a*(1-u^2)*v;

unull = solve(du==0);
vnull = solve(dv==0,[u v]);

dfdu = diff(du,u);
dfdv = diff(du,v);
dgdu = diff(dv,u);
dgdv = diff(dv,v);

J(u,v) = [dfdu dfdv; dgdu dgdv]
e1 = eig(J(vnull.u(1),vnull.v(1)))
e2 = eig(J(vnull.u(2),vnull.v(2)))
e3 = eig(J(vnull.u(3),vnull.v(3)))