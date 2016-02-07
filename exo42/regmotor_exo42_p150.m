% exo 42 p150  
%estimateur lineaire pour l'estimation des parametres d'un moteur electrique 

% tous ca ecris dans command window!!!!
y=[5;10;8;14;17];
C=[4 0 ;10 1;10 5 ;13 5;15 3];
xbar=[1;-1];
Gx=4*eye(2,2);
G_beta=9*eye(5,5);
ytilde=y-C*xbar;
Gy=C*Gx*C'+G_beta;
K=Gx*C'*inv(Gy);
xhat=xbar+K*ytilde;
Geps=Gx-K*C*Gx;
yhat= C*xhat; %mesure filtre
r=y-yhat;
