%exo 36  localisation par recuit simule p130   utilise fonction draw et f
global A B;
A=[0 7 7 9 9 7 7 4 2 0 5 6 6 5; 0 0 2 2 4 4 7 7 5 5 2 2 3 3];
B=[7 7 9 9 7 7 4 2 0 0 6 6 5 5; 0 2 2 4 4 7 7 5 5 0 2 3 3 2];
y=[6.4; 3.6; 2.3; 2.1; 1.7; 1.6; 3.0; 3.1];
p0=[1;1;0];
j0=norm(y-f(p0));
T=5;
while (T>0.01)
    pe=p0+T*randn(3,1);
    je=norm(y-f(pe));
    draw(pe,y,A,B);
    if (je<j0), j0=je; p0=pe;
    end;
    T=0.99*T;
    drawnow();
end;