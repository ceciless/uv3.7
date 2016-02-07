function draw(p,y,A,B)
clf; axis([-1,10,-1,8]);
axis('square');hold on;
theta=p(3)+(0:7)'*pi/4;
X=zeros(1,16);
Y=zeros(1,16);
X(1:2:15)=p(1);
Y(1:2:15)=p(2);
X(2:2:16)=p(1)+y.*cos(theta);
Y(2:2:16)=p(2)+y.*sin(theta);
plot(X,Y,'red');
for i=1:length(A),
    plot([A(1,i) B(1,i)],[A(2,i) B(2,i)],'black');
end
end