clear all;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
u0=1;
du=0;
k=2;
a=4;
b=13;
c=3;
x=k*(u0)/c;
t=[0:0.1:20];
lambda1=-3;
lambda2=-1/4;
xw=2/3;
A=-4/33;
B=16/11;

xs1=A*exp(lambda1*t);
xs2=B*exp(lambda2*t);
poziom=t;
poziom(:)=xw;
xr=xs1+xs2+xw;
x0=2;
x10=0;
sim('schemat',20)

figure(1);
hold on;
grid on;

plot(t,xs1, 'b-')
plot(t,xs2, 'm-')
plot(t,xs1+xs2, 'c--')
plot(t,poziom, 'r-')
plot(t,xr, 'g-')
plot(ans.tout, ans.x, 'k--');
legend('xs1','xs2','xs1+xs2','xw','x(t)analitycznie','x(t)symulacyjnie')
title('Podpunkt 1.')
xlabel('czas [s]')
ylabel('wartości')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
u0=1;
du=0;
k=2;
a=4;
b=13;
c=3;
x=k*(u0)/c;
t=[0:0.1:20];
lambda1=-3;
lambda2=-1/4;
xw=2/3;
A=0;
B=0;

xs1=A*exp(lambda1*t);
xs2=B*exp(lambda2*t);
poziom=t;
poziom(:)=xw;
xr=xs1+xs2+xw;
x0=2/3;
x10=0;
sim('schemat',20)

figure(2);
hold on;
grid on;

plot(t,xs1, 'b-')
plot(t,xs2, 'm-')
plot(t,xs1+xs2, 'c--')
plot(t,poziom, 'r-')
plot(t,xr, 'g-')
plot(ans.tout, ans.x, 'k--');
legend('xs1','xs2','xs1+xs2','xw','x(t)analitycznie','x(t)symulacyjnie')
title('Podpunkt 2.')
xlabel('czas [s]')
ylabel('wartości')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
u0=0;
du=1;
k=2;
a=4;
b=13;
c=3;
x=k*(u0)/c;
t=[0:0.1:20];
lambda1=-3;
lambda2=-1/4;
xw=2/3;
A=8/11-2/3;
B=-8/11;

xs1=A*exp(lambda1*t);
xs2=B*exp(lambda2*t);
poziom=t;
poziom(:)=xw;
skok=xs1+xs2+xw;
x0=0;
x10=0;
sim('schemat',20)

figure(3);
hold on;
grid on;

plot(t,xs1, 'b-')
plot(t,xs2, 'm-')
plot(t,xs1+xs2, 'c--')
plot(t,poziom, 'r-')
plot(t,skok, 'g-')
plot(ans.tout, ans.x, 'k--');
legend('xs1','xs2','xs1+xs2','xw','x(t)analitycznie','x(t)symulacyjnie')
title('Odpowiedź skokowa')
xlabel('czas [s]')
ylabel('wartości')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

