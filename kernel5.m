n=2000;
x1=zeros(n,1);
y1=zeros(n,1);
d1=[x1 y1];
r1=1;
for i=1:n
    r=unifrnd(0,r1);
    teta=unifrnd(0,2*pi);
    if(teta<=pi/2)
        x1(i)=r*sin(teta);
        y1(i)=r*cos(teta);
    end
    if(teta > pi/2 && teta<=pi)
        x1(i)=r*sin(teta);
        y1(i)=r*cos(teta)+2;
    end
    if(teta > pi && teta<=1.5*pi)
        x1(i)=r*sin(teta)+2;
        y1(i)=r*cos(teta)+2;
    end
    if(teta > 1.5*pi && teta<=2*pi)
        x1(i)=r*sin(teta)+2;
        y1(i)=r*cos(teta);
    end
end

m=n;
x2=zeros(m,1);
y2=zeros(m,1);

r1=1;
for i=1:m       
    x2(i)=unifrnd(0,2);
    y2(i)=unifrnd(0,2);
    while(test(x2(i),y2(i)))
        x2(i)=unifrnd(0,2);
        y2(i)=unifrnd(0,2);
    end   
end


x3=zeros(n,1);
y3=zeros(n,1);
z3=zeros(n,1);

for i=1:n
    x3(i)= x1(i);
    y3(i)= y1(i);
    z3(i)= y1(i)*x1(i);
end

x4=zeros(n,1);
y4=zeros(n,1);
z4=zeros(n,1);

for i=1:n
    x4(i)= x2(i);
    y4(i)= y2(i);
    z4(i)= y2(i)*x2(i);
end

subplot(1,2,1),plot(x1,y1,'o',...
    'MarkerSize',3,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor','b')
hold on;
subplot(1,2,1),plot(x2,y2,'o',...
    'MarkerSize',3,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r')

subplot(1,2,2),plot3(x3,y3,z3,'o',...
    'MarkerSize',3,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor','b')
hold on;
subplot(1,2,2),plot3(x4,y4,z4,'o',...
    'MarkerSize',3,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r')
