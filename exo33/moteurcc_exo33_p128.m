%exo 33 moteur a courant continu  p128

M=[4 0;10 1;10 5;13 5;15 3];
y=[5;10;8;14;17];
phat=inv(M'*M)*M'*y;
yhat=M*phat;% mesure filtree
omega2=20*phat(1)+10*phat(2) % 2eme question 

%ecrire ces codes dans le command window