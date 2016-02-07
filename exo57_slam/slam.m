%exercise 57 SLAM p161
M=load('slam_data.txt');
%temps
t=M(:,1);
%gite
phi=M(:,2);
%assiette
theta=M(:,3);
%cap
psi=M(:,4);
% vitesse dans le repere robot
vr=M(:,5:7);
%profondeur
depth=M(:,8);
%altitude
alt=M(:,9);
%resolution temporelle
dt=0.1;
%nombre d'obs
kmax=length(M);


xhat=[0;0;0];
init;
hold on;

for k=1:kmax,
    t=k*dt;
    xhat=xhat+dt*euler_matrix(phi(k),theta(k),psi(k))*vr(k,:)';
    plot(xhat(1),xhat(2),'oblue');
    drawnow()
end












