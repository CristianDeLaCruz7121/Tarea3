%----------FUNCTION ODE45 Que resuelve numericamente el sistema-----------%
[t,x]=ode45(@MovTrasODE45,[0 10], [0 0 0 0]); %[x1 x2 x'1 x'2]
%-------Aqui se crea la figura donde se va a graficar el x co respecto a t 
% x y t son parámetros que retorna la funcion ODE45--------%

figure(1)
plot(t,x(:,1),'b');
grid on
title("X1");
xlabel("Tiempo");
ylabel("Posición");

figure(2)
plot(t,x(:,2),'r');
grid on
title("X2");
xlabel("Tiempo");
ylabel("Posición");
