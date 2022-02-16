clear all;
close all;

figure(1);
hold on;
grid on;

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

plot(t,xs1, 'b--')
plot(t,xs2, 'r--')
plot(t,xs1+xs2, 'g--')
plot(t,poziom, 'c-')
plot(t,xr, 'k-')
legend('xs1','xs2','xs1+xs2','xw','x(t)')
xlabel('x')
ylabel('y')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2);
hold on;
grid on;

t=[0:0.1:20];
lambda1=-3;
lambda2=-1/4;
xw=2/3;
A=0;
B=0;

xs1=A*exp(lambda1*t);
xs2=B*exp(lambda2*t);
xw=2/3;
poziom=t;
poziom(:)=xw;
xr=xs1+xs2+xw;

plot(t,xs1, 'b--')
plot(t,xs2, 'r-')
plot(t,xs1+xs2, 'g--')
plot(t,poziom, 'c-')
plot(t,xr, 'k--')
legend('xs1','xs2','xs1+xs2','xw','x(t)')
xlabel('x')
ylabel('y')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(3);
hold on;
grid on;

t=[0:0.1:20];
lambda1=-3;
lambda2=-1/4;
xw=2/3;
A=-8/11-2/3;
B=8/11;

xs1=A*exp(lambda1*t);
xs2=B*exp(lambda2*t);
xw=2/3;
poziom=t;
poziom(:)=xw;
skok=xs1+xs2+xw;

plot(t,xs1, 'b--')
plot(t,xs2, 'r--')
plot(t,xs1+xs2, 'g--')
plot(t,poziom, 'c-')
plot(t,skok, 'k-')
legend('xs1','xs2','xs1+xs2','xw','skok')
xlabel('x')
ylabel('y')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(4);
hold on;
grid on;

t=[0:0.1:15];
lambda1=-3;
lambda2=-1/4;
A=-8/11-2/3;
B=8/11;

xs1=A*exp(lambda1*t);
xs2=B*exp(lambda2*t);
xw=2/3;
impuls=lambda1*xs1+lambda2*xs2;

plot(t,xs1, 'b--')
plot(t,xs2, 'r--')
plot(t,xs1+xs2, 'g--')
plot(t,impuls, 'k-')
legend('xs1','xs2','xs1+xs2','impuls')
xlabel('x')
ylabel('y')













