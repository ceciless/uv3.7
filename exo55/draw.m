function draw(x)
Auv0=[0 0 10 0 0 10 0 0;
      -1 1 0 -1 -0.2 0 0.2 1;
      0 0 0 0 1 0 1 0;
      1 1 1 1 1 1 1 1];
  
  E=matrice_euler(x(7),x(6),x(5));
  R=[E,[x(1);x(2);x(3)];0 0 0 1];
  Auv=R*Auv0;
  plot3(Auv(1,:),Auv(2,:),Auv(3,:),'blue');
  hold on;
  plot3(Auv(1,:),Auv(2,:),0*Auv(3,:),'black');
  axis([-30,30,-10,30,0,20]); axis square;
  
end