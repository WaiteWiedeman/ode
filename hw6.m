clc; clear; close all;
syms v u B a l

du = v;
dv = B*u - a*(1-u^2)*v;

unull = solve(du==0);
vnull = solve(dv==0,[u v]);

dfdu = diff(du,u);
dfdv = diff(du,v);
dgdu = diff(dv,u);
dgdv = diff(dv,v);

J = [dfdu dfdv; dgdu dgdv]
e = eig(J)