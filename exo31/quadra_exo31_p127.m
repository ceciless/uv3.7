%exo 31 representation d'une fonction quadratique  p127

Mx=-1:0.1:1; My=-1:0.1:1;
[X,Y]=meshgrid(Mx,My);
GX=Y;GY=X;
%quiver(Mx,My,GX,GY);
Z=X.*Y;
contour3(X,Y,Z);
surface(X,Y,Z);