close all; clear; clc;

%Load .mat file
load('linearcheck')

%PLOTTING PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Throttle
% Part 1
figure('units','normalized','outerposition',[0 0 0.5 0.8])
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Longitudinal States for 0.1 Throttle Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold') 
 nexttile;
plot(tout,u_linf(:,1),'LineWidth',2);
hold on
plot(tout,u_nonlinf(:,1),'LineWidth',2);
hold off
ylabel('u [m/s]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,alpha_linf(:,1),'LineWidth',2);
hold on
plot(tout,alpha_nonlinf(:,1),'LineWidth',2);
hold off
ylabel('AoA(\alpha) [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,q_linf(:,1),'LineWidth',2);
hold on
plot(tout,q_nonlinf(:,1),'LineWidth',2);
hold off
ylabel('q [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,theta_linf(:,1),'LineWidth',2);
hold on
plot(tout,theta_nonlinf(:,1),'LineWidth',2);
hold off
ylabel('\theta [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
saveas(gcf,'complongtl.png') %comparison longtitidunal throttle deflection

% Part 2
figure('units','normalized','outerposition',[0 0 0.5 0.8])
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Lateral States for 0.1 Throttle Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,beta_linf(:,1),'LineWidth',2);
hold on
plot(tout,beta_nonlinf(:,1),'LineWidth',2);
hold off
ylabel('\beta [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,phi_linf(:,1),'LineWidth',2);
hold on
plot(tout,phi_nonlinf(:,1),'LineWidth',2);
hold off
ylabel('\phi [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,p_linf(:,1),'LineWidth',2);
hold on
plot(tout,p_nonlinf(:,1),'LineWidth',2);
hold off
ylabel('p [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_linf(:,1),'LineWidth',2);
hold on
plot(tout,r_nonlinf(:,1),'LineWidth',2);
hold off
ylabel('r [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
saveas(gcf,'complattl.png') %comparison lateral throttle deflection

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aileron
% Part 1
figure('units','normalized','outerposition',[0 0 0.5 0.8])
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Longitudinal States for 2 deg Aileron Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold') 
 nexttile;
plot(tout,u_linf(:,2),'LineWidth',2);
hold on
plot(tout,u_nonlinf(:,2),'LineWidth',2);
hold off
ylabel('u [m/s]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,alpha_linf(:,2),'LineWidth',2);
hold on
plot(tout,alpha_nonlinf(:,2),'LineWidth',2);
hold off
ylabel('AoA(\alpha) [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,q_linf(:,2),'LineWidth',2);
hold on
plot(tout,q_nonlinf(:,2),'LineWidth',2);
hold off
ylabel('q [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,theta_linf(:,2),'LineWidth',2);
hold on
plot(tout,theta_nonlinf(:,2),'LineWidth',2);
hold off
ylabel('\theta [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
saveas(gcf,'complongaile.png') %comparison longtitidunal Aileron deflection

% Part 2
figure('units','normalized','outerposition',[0 0 0.5 0.8])
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Lateral States for 2 deg Aileron Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,beta_linf(:,2),'LineWidth',2);
hold on
plot(tout,beta_nonlinf(:,2),'LineWidth',2);
hold off
ylabel('\beta [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,phi_linf(:,2),'LineWidth',2);
hold on
plot(tout,phi_nonlinf(:,2),'LineWidth',2);
hold off
ylabel('\phi [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,p_linf(:,2),'LineWidth',2);
hold on
plot(tout,p_nonlinf(:,2),'LineWidth',2);
hold off
ylabel('p [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_linf(:,2),'LineWidth',2);
hold on
plot(tout,r_nonlinf(:,2),'LineWidth',2);
hold off
ylabel('r [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
saveas(gcf,'complataile.png') %comparison lateral Aileron deflection

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Elevator
% Part 1
figure('units','normalized','outerposition',[0 0 0.5 0.8])
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Longitudinal States for 2 deg Elevator Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold') 
 nexttile;
plot(tout,u_linf(:,3),'LineWidth',2);
hold on
plot(tout,u_nonlinf(:,3),'LineWidth',2);
hold off
ylabel('u [m/s]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,alpha_linf(:,3),'LineWidth',2);
hold on
plot(tout,alpha_nonlinf(:,3),'LineWidth',2);
hold off
ylabel('AoA(\alpha) [deg]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,q_linf(:,3),'LineWidth',2);
hold on
plot(tout,q_nonlinf(:,3),'LineWidth',2);
hold off
ylabel('q [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,theta_linf(:,3),'LineWidth',2);
hold on
plot(tout,theta_nonlinf(:,3),'LineWidth',2);
hold off
ylabel('\theta [deg]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
saveas(gcf,'complongelev.png') %comparison longtitidunal Elevator deflection

% Part 2
figure('units','normalized','outerposition',[0 0 0.5 0.8])
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Lateral States for 2 deg Elevator Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,beta_linf(:,3),'LineWidth',2);
hold on
plot(tout,beta_nonlinf(:,3),'LineWidth',2);
hold off
ylabel('\beta [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,phi_linf(:,3),'LineWidth',2);
hold on
plot(tout,phi_nonlinf(:,3),'LineWidth',2);
hold off
ylabel('\phi [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,p_linf(:,3),'LineWidth',2);
hold on
plot(tout,p_nonlinf(:,3),'LineWidth',2);
hold off
ylabel('p [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_linf(:,3),'LineWidth',2);
hold on
plot(tout,r_nonlinf(:,3),'LineWidth',2);
hold off
ylabel('r [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
saveas(gcf,'complatelev.png') %comparison lateral Elevator deflection

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rudder
% Part 1
figure('units','normalized','outerposition',[0 0 0.5 0.8])
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Longitudinal States for 2 deg Rudder Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold') 
 nexttile;
plot(tout,u_linf(:,4),'LineWidth',2);
hold on
plot(tout,u_nonlinf(:,4),'LineWidth',2);
hold off
ylabel('u [m/s]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,alpha_linf(:,4),'LineWidth',2);
hold on
plot(tout,alpha_nonlinf(:,4),'LineWidth',2);
hold off
ylabel('AoA(\alpha) [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,q_linf(:,4),'LineWidth',2);
hold on
plot(tout,q_nonlinf(:,4),'LineWidth',2);
hold off
ylabel('q [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,theta_linf(:,4),'LineWidth',2);
hold on
plot(tout,theta_nonlinf(:,4),'LineWidth',2);
hold off
ylabel('\theta [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
saveas(gcf,'complongrud.png') %comparison longtitidunal Rudder deflection

% Part 2
figure('units','normalized','outerposition',[0 0 0.5 0.8])
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Lateral States for 2 deg Rudder Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,beta_linf(:,4),'LineWidth',2);
hold on
plot(tout,beta_nonlinf(:,4),'LineWidth',2);
hold off
ylabel('\beta [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,phi_linf(:,4),'LineWidth',2);
hold on
plot(tout,phi_nonlinf(:,4),'LineWidth',2);
hold off
ylabel('\phi [deg]','FontSize',8);
legend('Lin','NonLin','Location','southwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,p_linf(:,4),'LineWidth',2);
hold on
plot(tout,p_nonlinf(:,4),'LineWidth',2);
hold off
ylabel('p [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_linf(:,4),'LineWidth',2);
hold on
plot(tout,r_nonlinf(:,4),'LineWidth',2);
hold off
ylabel('r [deg/s]','FontSize',8);
legend('Lin','NonLin','Location','northwest');
set(gca,'FontSize',15)
grid on
saveas(gcf,'complatrud.png') %comparison lateral Rudder deflection