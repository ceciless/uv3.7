%exo suplemmentaire distribution gaussienne
Mx1=-5:0.1:5;
Mx2=-5:0.1:5;
[X1, X2]=meshgrid(Mx1,Mx2);
xbar=[1;2];
A=[cos(pi/6),-sin(pi/6);sin(pi/6),cos(pi/6)]*[1 0;0 2];%Q2
ybar=A*xbar+[2;-5];%Q2
Gx=eye(2,2); %covariance gama(x)
Gy=A*Gx*A'; %Q2
invGx=inv(Gx);
invGy=inv(Gy);% Q2
dX1=X1-xbar(1);
dX2=X2-xbar(2);
dY1=X1-ybar(1);% Q2
dY2=X2-ybar(2);% Q2

Qx=invGx(1,1)*dX1.^2+2*(invGx(1,2)*dX1.*dX2)+invGx(2,2)*dX2.^2;
Qy=invGy(1,1)*dY1.^2+2*(invGy(1,2)*dY1.*dY2)+invGy(2,2)*dY2.^2;% Q2

zx=1/(2*pi*sqrt(det(Gx)))*exp(-0.5*Qx); % equation pi(x)
zy=1/(2*pi*sqrt(det(Gy)))*exp(-0.5*Qy); % equation pi(x)         % Q2

% contour3(X1,X2,z,10,'black');%Q1
% surface(X1,X2,z);%Q1
contour3(X1,X2,zy,10,'black');% Q2
surface(X1,X2,zy);%Q2