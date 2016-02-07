%exo 6 robot 3D p22    utilise la fonction f.m!
close all;clear all; clc;
x=[0;0;10;1.7;0;0;0];
dt=0.1;
for t=0:dt:5,
    u=[0;0;0];
    x=x+dt*f(x,u);
    draw(x);
    pause(dt);
end