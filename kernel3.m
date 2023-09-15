n=800;
x1=zeros(n,1);
y1=zeros(n,1);
z1=zeros(n,1);
d1=[x1 y1];
r1=1;
for i=1:n
    r=unifrnd(0,r1-0.1);
    teta=unifrnd(0,2*pi);
    x1(i)=r*sin(teta);
    y1(i)=r*cos(teta);
    z1(i)=norm([x1(i) y1(i)]);
end

x2=zeros(n,1);
y2=zeros(n,1);
z2=zeros(n,1);

for i=1:n
    r=unifrnd(r1+0.1,2);
    teta=unifrnd(0,2*pi);
    x2(i)=r*sin(teta);
    y2(i)=r*cos(teta);
    z2(i)=norm([x2(i) y2(i)]);
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

subplot(1,2,2),plot(x1,z1,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor','b')
hold on;
subplot(1,2,2),plot(x2,z2,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r')

hold on;
subplot(1,2,2),plot(x3,z3,'o',...
      'MarkerSize',3,...
    'MarkerEdgeColor','g',...
    'MarkerFaceColor','g')

z=d1'*d2+10;

y=0;