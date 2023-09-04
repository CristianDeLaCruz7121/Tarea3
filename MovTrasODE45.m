function dx=MovTrasODE45(t,x)
%----DEFINICIÓN DE PARAMETROS----%
m1=290;
b1=1000; 
m2=59; 
k1=16182; 
f=0; 
k2=19000; 
z1=0.05*sin(0.5*pi*t);
z2= 0.05*sin(20*pi*t);

%--------------------------------%
dx=zeros(4,1);
%----DEFINICION DE DINAMICA DEL SISTEMA----%
dx(1)=x(3);
dx(2)=x(4);
dx(3)=(1/m1)*(-(b1*x(3))+(b1*x(4))-(k1*x(1))+(k1*x(2))+f);
dx(4)=(1/m2)*((b1*x(3))-(b1*x(4))+(k1*x(1))-((k1+k2)*x(2))+(k2*z1)+f);
