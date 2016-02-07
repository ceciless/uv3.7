%exo 46 p152 estimation des parametres d'un moteur electrique par le filtre de Kalman 
y=[5;10;11;14;17]; % omiga
C=[4 0; 10 1; 10 5; 13 5;15 3]; %(U Tr)
A=eye(2,2); 
xhat=[1;-1];
Gx=4*eye(2,2);
Galpha=zeros(2,2);
u=zeros(2,1);
Gbeta=9;
draw_ellipse(xhat,Gx,0.9,'red',3);hold on;
for k=1:5
  [xhat Gx]=Kalman(xhat,Gx,u,y(k),Galpha,Gbeta,A,C(k,:));    
  draw_ellipse(xhat,Gx,0.9,'blue',3);
end
 