% 5 BAR PARALLEL ROBOT
%% 
clear all; clc;
a1=0;
a2=0.2; a3=0.35; a4=a2; a5=a3; a32=a3; a3D=2*a3;

%%
% Forward kinematics of planar manipulandum
syms a1 a2 a3 a4 a5 th2 th5 Cx Cy 
eq1=((Cx-a2*cos(th2))^2)+((Cy-a2*sin(th2))^2)-a3^2;
eq2=((a5*cos(th5)-Cx)^2)+((Cy-a5*sin(th5))^2)-a4^2; 

S=solve([eq1;eq2],[Cx;Cy]);
pretty(simplify(S.Cx))

%% Inverse kinematics of planar manipulandum
clear all; clc;
syms a1 a2 a3 a32 a3D a4 a5 th2 th5 XD YD

eq1=XD-a2*cos(th2)-a3D*cos(th5);
eq2=YD-a2*sin(th2)-a3D*sin(th5);
S=solve([eq1;eq2],[th2;th5]);

%% Simulation with inverse kinematics 
clear all, clc
a1=0;
a2=0.2; a3=0.35; a4=a2; a5=a3; a32=a3; a3D=2*a3;

t=0:0.001:10;
YD=0.55+0.15*sin(2*pi*(1/5)*t);
XD=0.45*ones(1,length(t));

figure
plot(t,YD);
xlabel('time [s]');
ylabel('Y_D [m]');
figure
plot(t,XD);
xlabel('time [s]');
ylabel('X_D [m]');
figure
plot(XD,YD);
xlabel('X_D [m]');
ylabel('Y_D [m]');

% load data_fw2inv

% th2_1=2*atan2((2*YD*a2 - (- XD.^4 - 2*XD.^2.*YD.^2 + 2*XD.^2*a2^2 + 2*XD.^2*a3D^2 - YD.^4 + 2*YD.^2*a2^2 + 2*YD.^2*a3D^2 - a2^4 + 2*a2^2*a3D^2 - a3D^4).^(1/2)),(XD.^2 + 2*XD*a2 + YD.^2 + a2^2 - a3D^2));
th2_2=2*atan2((2*YD*a2 + (- XD.^4 - 2*XD.^2.*YD.^2 + 2*XD.^2*a2^2 + 2*XD.^2*a3D^2 - YD.^4 + 2*YD.^2*a2^2 + 2*YD.^2*a3D^2 - a2^4 + 2*a2^2*a3D^2 - a3D^4).^(1/2)),(XD.^2 + 2*XD*a2 + YD.^2 + a2^2 - a3D^2));
% th5_1=2*atan2((2*YD*a3D + ((- XD.^2 - YD.^2 + a2^2 + 2*a2*a3D + a3D^2).*(XD.^2 + YD.^2 - a2^2 + 2*a2*a3D - a3D^2)).^(1/2)),(XD.^2 + 2*XD*a3D + YD.^2 - a2^2 + a3D^2));
th5_2=2*atan2((2*YD*a3D - ((- XD.^2 - YD.^2 + a2^2 + 2*a2*a3D + a3D^2).*(XD.^2 + YD.^2 - a2^2 + 2*a2*a3D - a3D^2)).^(1/2)),(XD.^2 + 2*XD*a3D + YD.^2 - a2^2 + a3D^2));

for i=1:length(th2_2);
    th2=th2_2(i);
    th5=th5_2(i);
    Cx_1(i)=(a2^3*cos(th2) + a5^3*cos(th5) - a2*a3^2*cos(th2) + a2*a4^2*cos(th2) + a3^2*a5*cos(th5) - a4^2*a5*cos(th5) - a2*sin(th2)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) + a5*sin(th5)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a2*a5^2*cos(th2 - 2*th5) - a2^2*a5*cos(2*th2 - th5))/(2*(a2^2 - 2*cos(th2 - th5)*a2*a5 + a5^2));
    Cx_2(i)=(a2^3*cos(th2) + a5^3*cos(th5) - a2*a3^2*cos(th2) + a2*a4^2*cos(th2) + a3^2*a5*cos(th5) - a4^2*a5*cos(th5) + a2*sin(th2)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a5*sin(th5)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a2*a5^2*cos(th2 - 2*th5) - a2^2*a5*cos(2*th2 - th5))/(2*(a2^2 - 2*cos(th2 - th5)*a2*a5 + a5^2));
    Cy_1(i)=(a2^3*sin(th2) + a5^3*sin(th5) + a2*cos(th2)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a5*cos(th5)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a2*a3^2*sin(th2) + a2*a4^2*sin(th2) + a3^2*a5*sin(th5) - a4^2*a5*sin(th5) + a2*a5^2*sin(th2 - 2*th5) - a2^2*a5*sin(2*th2 - th5))/(2*(a2^2 - 2*cos(th2 - th5)*a2*a5 + a5^2));
    Cy_2(i)=(a2^3*sin(th2) + a5^3*sin(th5) - a2*cos(th2)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) + a5*cos(th5)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a2*a3^2*sin(th2) + a2*a4^2*sin(th2) + a3^2*a5*sin(th5) - a4^2*a5*sin(th5) + a2*a5^2*sin(th2 - 2*th5) - a2^2*a5*sin(2*th2 - th5))/(2*(a2^2 - 2*cos(th2 - th5)*a2*a5 + a5^2));
    
    Dx_1(i)=Cx_1(i)+a32*(Cx_1(i)-a2*cos(th2))/a3;
    Dx_2(i)=Cx_2(i)+a32*(Cx_2(i)-a2*cos(th2))/a3;
    Dy_1(i)=Cy_1(i)+a32*(Cy_1(i)-a2*sin(th2))/a3;
    Dy_2(i)=Cy_2(i)+a32*(Cy_2(i)-a2*sin(th2))/a3;
    
    Dx=Dx_2(i);
    Dy=Dy_2(i);  
end


Vyd=0.15*2*pi*(1/5)*cos(2*pi*(1/5)*t);
Vxd=0*ones(1,length(t));

for j=1:length(t);
    th_D=inv([-a2*sin(th2_2(1,j)) -a3D*sin(th5_2(1,j));a2*cos(th2_2(1,j)) a3D*cos(th5_2(1,j))])*[Vyd(j);Vxd(j)];
    dth2_d(j)=th_D(1);
    dth5_d(j)=th_D(2);
end

% plot(Cx_1,Cy_1,'r')
% hold on
% plot(Cx_2,Cy_2,'k')
% axis square
% hold off

h = animatedline; h.Color = 'black';
h1 = animatedline; h1.Color = 'red';
h2 = animatedline; h2.Color = 'blue';
h3 = animatedline; h3.Color = 'green';

% axis([-1,1,0,1])
xA0=0*th2_2;
yA0=0*th2_2;
xB0=a1+0*th2_2;
yB0=0*th2_2;
xA=a2*cos(th2_2);
yA=a2*sin(th2_2);
xB=a1+a5*cos(th5_2);
yB=a5*sin(th5_2);

x2=[xA0' xA']; y2=[yA0' yA'];
% x3=[xA' Cx_2']; y3=[yA' Cy_2'];
x3=[xA' Dx_2']; y3=[yA' Dy_2'];
x5=[xB0' xB']; y5=[yB0' yB'];
x4=[xB' Cx_2']; y4=[yB' Cy_2'];

for k = 1:length(th2_2)
   clearpoints(h)
   clearpoints(h1)
   clearpoints(h2)
   clearpoints(h3)
   
    addpoints(h,x2(k,:),y2(k,:));
     axis equal
    addpoints(h1,x3(k,:),y3(k,:));
     axis equal
    addpoints(h2,x4(k,:),y4(k,:));
     axis equal
    addpoints(h3,x5(k,:),y5(k,:));
    axis equal
    
    drawnow
    
%     pause(0.1)
end

th2_sim=th2_2;
th5_sim=th5_2;
XD_sim=XD;
YD_sim=YD;

save data_sim_control th2_sim th5_sim XD_sim YD_sim
figure

plot(t,th2_2*180/pi,'b',t,th5_2*180/pi,'r')
xlabel('time [s]')
ylabel('th_2, th_5 [deg]')
legend('th_2','th_5')

%% Simulation with forward kinematics (Cx and Cy calculated as a1=0)
clear all; clc;
a1=0;
a2=0.2; a3=0.35; a4=a2; a5=a3; a32=a3; a3D=2*a3;
TH2=(65:5:130)*pi/180;
TH5=(45:5:110)*pi/180;

for i=1:length(TH2);
    th2=TH2(i);
    th5=TH5(i);
    Cx_1(i)=(a2^3*cos(th2) + a5^3*cos(th5) - a2*a3^2*cos(th2) + a2*a4^2*cos(th2) + a3^2*a5*cos(th5) - a4^2*a5*cos(th5) - a2*sin(th2)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) + a5*sin(th5)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a2*a5^2*cos(th2 - 2*th5) - a2^2*a5*cos(2*th2 - th5))/(2*(a2^2 - 2*cos(th2 - th5)*a2*a5 + a5^2));
    Cx_2(i)=(a2^3*cos(th2) + a5^3*cos(th5) - a2*a3^2*cos(th2) + a2*a4^2*cos(th2) + a3^2*a5*cos(th5) - a4^2*a5*cos(th5) + a2*sin(th2)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a5*sin(th5)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a2*a5^2*cos(th2 - 2*th5) - a2^2*a5*cos(2*th2 - th5))/(2*(a2^2 - 2*cos(th2 - th5)*a2*a5 + a5^2));
    Cy_1(i)=(a2^3*sin(th2) + a5^3*sin(th5) + a2*cos(th2)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a5*cos(th5)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a2*a3^2*sin(th2) + a2*a4^2*sin(th2) + a3^2*a5*sin(th5) - a4^2*a5*sin(th5) + a2*a5^2*sin(th2 - 2*th5) - a2^2*a5*sin(2*th2 - th5))/(2*(a2^2 - 2*cos(th2 - th5)*a2*a5 + a5^2));
    Cy_2(i)=(a2^3*sin(th2) + a5^3*sin(th5) - a2*cos(th2)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) + a5*cos(th5)*(2*a2^2*a3^2 - a3^4 - a4^4 - a5^4 - a2^4 + 2*a2^2*a4^2 - 4*a2^2*a5^2 + 2*a3^2*a4^2 + 2*a3^2*a5^2 + 2*a4^2*a5^2 - 2*a2^2*a5^2*cos(2*th2 - 2*th5) + 4*a2*a5^3*cos(th2 - th5) + 4*a2^3*a5*cos(th2 - th5) - 4*a2*a3^2*a5*cos(th2 - th5) - 4*a2*a4^2*a5*cos(th2 - th5))^(1/2) - a2*a3^2*sin(th2) + a2*a4^2*sin(th2) + a3^2*a5*sin(th5) - a4^2*a5*sin(th5) + a2*a5^2*sin(th2 - 2*th5) - a2^2*a5*sin(2*th2 - th5))/(2*(a2^2 - 2*cos(th2 - th5)*a2*a5 + a5^2));
    
    Dx_1(i)=Cx_1(i)+a32*(Cx_1(i)-a2*cos(th2))/a3;
    Dx_2(i)=Cx_2(i)+a32*(Cx_2(i)-a2*cos(th2))/a3;
    Dy_1(i)=Cy_1(i)+a32*(Cy_1(i)-a2*sin(th2))/a3;
    Dy_2(i)=Cy_2(i)+a32*(Cy_2(i)-a2*sin(th2))/a3;
    
    Dx=Dx_2(i);
    Dy=Dy_2(i);
    %th_22(i)=-log((Dx^2 + Dy^2 + a2^2 - a3D^2 - (-(- Dx^2 - Dy^2 + a2^2 + 2*a2*a3D + a3D^2)*(Dx^2 + Dy^2 - a2^2 + 2*a2*a3D - a3D^2))^(1/2))/(2*a2*(Dx - Dy*1i)))*1i

 
   
end

% plot(Cx_1,Cy_1,'r')
% hold on
% plot(Cx_2,Cy_2,'k')
% axis square
% hold off

h = animatedline; h.Color = 'black';
h1 = animatedline; h1.Color = 'red';
h2 = animatedline; h2.Color = 'blue';
h3 = animatedline; h3.Color = 'green';

% axis([-1,1,0,1])
xA0=0*TH2;
yA0=0*TH2;
xB0=a1+0*TH2;
yB0=0*TH2;
xA=a2*cos(TH2);
yA=a2*sin(TH2);
xB=a1+a5*cos(TH5);
yB=a5*sin(TH5);

x2=[xA0' xA']; y2=[yA0' yA'];
% x3=[xA' Cx_2']; y3=[yA' Cy_2'];
x3=[xA' Dx_2']; y3=[yA' Dy_2'];
x5=[xB0' xB']; y5=[yB0' yB'];
x4=[xB' Cx_2']; y4=[yB' Cy_2'];

for k = 1:length(TH2)
   clearpoints(h)
   clearpoints(h1)
   clearpoints(h2)
   clearpoints(h3)
   
    addpoints(h,x2(k,:),y2(k,:));
     axis equal
    addpoints(h1,x3(k,:),y3(k,:));
     axis equal
    addpoints(h2,x4(k,:),y4(k,:));
     axis equal
    addpoints(h3,x5(k,:),y5(k,:));
    axis equal
    drawnow
    
    pause(0.5)
end


