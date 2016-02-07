function y = f(p)  %p=(x,y,theta)
    global A B;
    y=inf(8,1);
    for i=1:8,
        u=[cos(p(3)+(pi/4)*(i-1)); sin(p(3)+(pi/4)*(i-1))];
        m=[p(1);p(2)];
        for j=1:length(A),
            a=A(:,j);
            b=B(:,j);
            if det([a-m,u])*det([b-m,u])<0
                alpha=-det([b-a,m-a])/det([b-a,u]);
                if alpha>0,
                    y(i)=min(alpha,y(i));
                end
            end
        end
    end
end
