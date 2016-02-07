%exo 37 ellipsoide de confiance  p147
A1=[1 0;0 3];
A2=[cos(pi/4) -sin(pi/4);sin(pi/4) cos(pi/4)];
G1=eye(2,2);
G2=3*eye(2,2);
G3=A1*G2*A1'+G1;
G4=A2*G3*A2';
G5=G4+G3;
G6=A2*G5*A2';
axis([-20,20,-20,20]);
axis('square');
draw_ellipse([0;0],G1,0.9,'black',2);hold on;
draw_ellipse([0;0],G2,0.9,'green',2);
draw_ellipse([0;0],G3,0.9,'red',2);
draw_ellipse([0;0],G4,0.9,'blue',2);
draw_ellipse([0;0],G5,0.9,'magenta',2);
draw_ellipse([0;0],G6,0.9,'black',2);