close all; clear all; clc;
axis([-0.5 3.5 -1.2 2.8]);
axis square; hold on;
load lidar_data A1;
x1=A1(:,1); y1=A1(:,2);
plot(x1,y1,'o');

%Q3
n=10;
alpha3=[];d3=[];
for i=1:n:length(A1)-n,
    x2=x1(i:i+n-1);y2=y1(i:i+n-1);
    A2=[x2,y2];
    b2=ones(n,1);
    p=(A2'*A2)\A2'*b2; %inv(A'*A)*A'*b
    d2=1/norm(p);
    alpha2=atan2(p(2),p(1));
    if (norm(A2*p-b2)<0.05)
        plot(x2,y2,'+magenta');
        d3=[d3;d2];
        alpha3=[alpha3;alpha2];
    end
end 
alpham3=(1/4)*atan2(median(sin(4*alpha3)),median(cos(4*alpha3)));

for k=0:3
    alpha4=k*pi/2+alpham3;
    I=cos(alpha3-alpha4)>0.9
    d4=median(d3(I));
    w=d4*[cos(alpha4);sin(alpha4)]*[1 1]+[-sin(alpha4);cos(alpha4)]*[-10 10];
    plot(w(1,:),w(2,:),'blue');
end

% n=200;
% alphav=pi/3;
% dv=3;
% xi=randn(n,1);
% yi=(dv-cos(alphav)*xi)/sin(alphav)+0.5*randn(n,1);  %cos(alpha)*x+sin(alpha)*y=d
% plot(xi,yi,'+');
% A=[xi,yi];
% b=ones(n,1);
% p=(A'*A)\A'*b; %inv(A'*A)*A'*b
% d=1/norm(p);
% alpha=atan2(p(2),p(1));
% e=norm(A*p-b);

%Q2
n=500;
alpha=pi/3+0.1*randn(n,1)+2*pi*floor(1.1*rand(n,1));
alpha=alpha+floor(1.1*rand(n,1)).*(100*randn(n,1));
alpham=atan2(median(sin(alpha)),median(cos(alpha)));
plot(cos(alpha),sin(alpha),'+');

