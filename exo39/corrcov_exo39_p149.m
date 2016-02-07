%exo 39 ellipsoide de confiance: estimateur   p149
%Q1
n=1000;
xbar=[1;2];
Gx=[3 1 ; 1 3];% matrice de covariance
b=randn(2,n);
%plot(b(1,:),b(2,:),'.blue');
%x=xbar*ones(1,n)+sqrtm(Gx)*b;
x=mvnrnd(xbar,Gx,n)';
axis([-10 10 -10 10]);hold on;
plot(x(1,:),x(2,:),'.blue');
draw_ellipse(xbar,Gx,0.9,'red',2);

% Q2
x2=-10:10;
x1=1+(1/3)*(x2-2);
plot(x1,x2,'magenta','LineWidth',2);

%Q3
x1=-10:10;
x2=2+(1/3)*(x1-1);
plot(x1,x2,'green','LineWidth',2);

