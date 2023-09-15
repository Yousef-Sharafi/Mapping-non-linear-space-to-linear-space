n=800;
x1=zeros(n,1);
y1=zeros(n,1);

d1=[x1 y1];
r1=1;
for i=1:n
    r=unifrnd(0,r1-0.1);
    teta=unifrnd(0,2*pi);
    x1(i)=r*sin(teta);
    y1(i)=r*cos(teta);
end

x2=zeros(n,1);
y2=zeros(n,1);
z2=zeros(n,1);

for i=1:n
    r=unifrnd(r1+0.1,2);
    teta=unifrnd(0,2*pi);
    x2(i)=r*sin(teta);
    y2(i)=r*cos(teta);
end

x3=zeros(n,1);
y3=zeros(n,1);
z3=zeros(n,1);

for i=1:n
    r=unifrnd(2*r1+0.1,3);
    teta=unifrnd(0,2*pi);
    x3(i)=r*sin(teta);
    y3(i)=r*cos(teta);
    z3(i)=norm([x3(i) y3(i)]);
end


x4=zeros(n,1);
y4=zeros(n,1);
z4=zeros(n,1);

for i=1:n
    x4(i)= x1(i)^2;
    y4(i)= sqrt(2)*y1(i)*x1(i);
    z4(i)= y1(i)^2;
end

x5=zeros(n,1);
y5=zeros(n,1);
z5=zeros(n,1);

for i=1:n
    x5(i)= x2(i)^2;
    y5(i)= sqrt(2)*y2(i)*x2(i);
    z5(i)= y2(i)^2;
end


x6=zeros(n,1);
y6=zeros(n,1);
z6=zeros(n,1);

for i=1:n
    x6(i)= x3(i)^2;
    y6(i)= sqrt(2)*y3(i)*x3(i);
    z6(i)= y3(i)^2;
end

d2=[x2 y2];

subplot(1,2,1),plot(x1,y1,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor','b')
hold on;
subplot(1,2,1),plot(x2,y2,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r')

hold on;
subplot(1,2,1),plot(x3,y3,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','g',...
    'MarkerFaceColor','g')

subplot(1,2,2),plot3(x4,y4,z4,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor','b')
hold on;
subplot(1,2,2),plot3(x5,y5,z5,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r')

hold on;
subplot(1,2,2),plot3(x6,y6,z6,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','g',...
    'MarkerFaceColor','g')

z=d1'*d2+10;
