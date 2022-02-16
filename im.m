clear all;
close all;

u0=100;
du=0;
k=2;
a=4;
b=13;
c=3;
t=[0:0.1:20];
lambda1=-3;
lambda2=-1/4;
xw=0;
A=-2/11;
B=2/11;

xs1=A*exp(lambda1*t);
xs2=B*exp(lambda2*t);
poziom=t;
poziom(:)=xw;
impul=xs1+xs2+xw;
x0=0;
x10=0;
sim('impuls',20)

figure(1);
hold on;
grid on;

plot(t,xs1, 'b-')
plot(t,xs2, 'm--')
plot(t,xs1+xs2, 'r-')
plot(t,poziom, 'c--')
plot(t,impul, 'g--')
plot(ans.tout, ans.x, 'k--');
legend('xs1','xs2','xs1+xs2','xw','x(t)analitycznie','x(t)symulacyjnie')
title('Odpowiedź impulsowa')
xlabel('czas [s]')
ylabel('wartości')