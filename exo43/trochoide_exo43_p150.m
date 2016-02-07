%exo 43 Trochoide  p150
%Q1
pbar=[0;0];
Gp=10^4*eye(2,2);
y=[0.38;3.25;4.97;-0.26];
t=[1;2;3;7];
c=[ones(size(t)),-cos(t)]; % regarde note, matrice c
Gbeta=0.01*eye(4,4);
ytilde=y-c*pbar;
Gy=c*Gp*c'+Gbeta;   % regarde note, y=c*[p1;p2]+beta
k=Gp*c'*inv(Gy);
phat=pbar+k*ytilde;
Geps=Gp-k*c*Gp; % matrice de covariance

%Q2
t1=0:0.01:10;
x1=phat(1)*t1-phat(2)*sin(t1);
y1=phat(1)   -phat(2)*cos(t1);
plot(x1,y1,'blue'); % on a obtenu un forme trochoide

figure(2),
plot(t1,y1,'blue');hold on; % absis:temps, ordonnee:altitude de la masse
plot(t,y,'ored');

% c*phat: mesure filtree
% r=y-c*phat: vecteur de résidu
