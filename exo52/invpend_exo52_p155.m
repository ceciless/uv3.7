%exo52 estimation d'etat pour le pendule inverse p155

function invpend()

function v=f(x,u)
    v=[x(3);x(4);
      (m*sin(x(2))*(g*cos(x(2))-1*x(4)^2)+u)/(M+m*sin(x(2))^2);
      (sin(x(2))*((M+m)*g-m*1*x(4)^2*cos(x(2)))+u*cos(x(2)))/(1*(M+m*sin(x(2))^2))];
    
end;

function draw(x,w)
    clf();hold on;axis('off');axis([-3,3,-3,3]);
    plot([x(1),x(1)-1*sin(x(2))],[0,1*cos(x(2))],'blue','LineWidth',2)
    plot(x(1)+[-.5,.5,.5,-.5,-.5],[0,0,-0.25,-0.25,0],'magenta','LineWidth',2)
    plot(w,0,'ored')
    drawnow();
end
l=1;M=5;g=9.81;m=1;dt=0.01;

A=[0 0 1 0;0 0 0 1; 0 m*g/M 0 0; 0 (M+m)*g/(1*M) 0 0];
B=[0;0;1/M;1/(1*M)];
K=place(A,B,[-2 -2.1 -2.2 -2.3]);
E=[1 0 0 0];
C=[1 0 0 0 ;0 1 0 0];
% L=palce(A',C',[-2 -2.1 -2.2 -2.3])';
h=-inv(E*inv(A-B*K)*B);
x=[0;0.2;0;0];
xhat=[0;0;0;0];
Gx=eye(4,4);
Galpha=dt*0.00001*eye(4,4);
Gbeta=0.01^2*eye(2,2);
for t=0:dt:7,
    w=1;
    u=-K*xhat+h*w;
    y=C*x+0.01*randn(2,1);
    %xhat=xhat+(A*xhat+B*u-L*(C*xhat-y))*dt
    [xhat,Gx]=Kalman(xhat,Gx,dt*B*u,y,Galpha,Gbeta,eye(4,4)+dt*A,C);
%     u=-K*x+h*w;
    x=x+dt*f(x,u);
    draw(x,w);

end
end


