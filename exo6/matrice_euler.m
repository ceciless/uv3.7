function R = matrice_euler(phi,theta,psi)
Apsi=psi*[0 -1 0; 1 0 0;0 0 0];
Atheta=theta*[0 0 1;0 0 0;-1 0 0];
Aphi=phi*[0 0 0;0 0 -1;0 1 0];
R=expm(Apsi)*expm(Atheta)*expm(Aphi);
end
