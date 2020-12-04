%Init loading file
close all; clear; clc; 

% run('thirdhwq1')

load('thirdhwq1')

AoS_out70 = rad2deg(AoS_out70);
AoA_out70 = rad2deg(AoA_out70);
roll_out70 = rad2deg(roll_out70);
pitch_out70 = rad2deg(pitch_out70);
yaw_out70 = rad2deg(yaw_out70);
p_out70 = rad2deg(p_out70);
q_out70 = rad2deg(q_out70);
r_out70 = rad2deg(r_out70);

AoS_out110 = rad2deg(AoS_out110);
AoA_out110 = rad2deg(AoA_out110);
roll_out110 = rad2deg(roll_out110);
pitch_out110 = rad2deg(pitch_out110);
yaw_out110 = rad2deg(yaw_out110);
p_out110 = rad2deg(p_out110);
q_out110 = rad2deg(q_out110);
r_out110 = rad2deg(r_out110);


%%%%%%%%%%%%%%%%%PLOTTING PART%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% FOR 70 KNOTS %%%%%%%%%%%%%%%%%%%%
%% Q1a
% Positive
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1a Positive Elevator Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold') 
 nexttile;
plot(tout,q_out70(:,3),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out70(:,3),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out70(:,3),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out70(:,3),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,elev_in70(:,3),'LineWidth',2);
ylabel('Elevator Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1aElevator70PositivePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1a Positive Elevator Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out70(:,3),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out70(:,3),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out70(:,3),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out70(:,3),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out70(:,3),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1aElevator70PositivePart2.png')

% Negative
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1a Negative Elevator Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out70(:,4),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on 
 nexttile;
plot(tout,pitch_out70(:,4),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out70(:,4),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out70(:,4),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,elev_in70(:,4),'LineWidth',2);
ylabel('Elevator Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1aElevator70NegativePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1a Negative Elevator Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out70(:,4),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out70(:,4),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
nexttile;
plot(tout,roll_out70(:,4),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out70(:,4),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out70(:,4),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1aElevator70NegativePart2.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Q1b 
% Positive
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(6,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1b Positive Aileron Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out70(:,1),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out70(:,1),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out70(:,1),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out70(:,1),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out70(:,1),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,aile_in70(:,1),'LineWidth',2);
ylabel('Aileron Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1bAileron70PositivePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1b Positive Aileron Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out70(:,1),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out70(:,1),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out70(:,1),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out70(:,1),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1bAileron70PositivePart2.png')

% Negative
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(6,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1b Negative Aileron Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out70(:,2),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out70(:,2),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out70(:,2),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out70(:,2),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out70(:,2),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,aile_in70(:,2),'LineWidth',2);
ylabel('Aileron Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1bAileron70NegativePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1b Negative Aileron Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out70(:,2),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out70(:,2),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out70(:,2),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out70(:,2),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1bAileron70NegativePart2.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Q1c 
% Positive
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(6,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1c Positive Rudder Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,r_out70(:,5),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out70(:,5),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,p_out70(:,5),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out70(:,5),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out70(:,5),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,rud_in70(:,5),'LineWidth',2);
ylabel('Rudder Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1cRudder70PositivePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1c Positive Rudder Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out70(:,5),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out70(:,5),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out70(:,5),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out70(:,5),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1cRudder70PositivePart2.png')

% Negative
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(6,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1c Negative Rudder Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,r_out70(:,6),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out70(:,6),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,p_out70(:,6),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out70(:,6),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out70(:,6),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,rud_in70(:,6),'LineWidth',2);
ylabel('Rudder Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1cRudder70NegativePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1c Negative Rudder Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out70(:,6),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out70(:,6),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out70(:,6),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out70(:,6),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1cRudder70NegativePart2.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Q1d 
% Positive
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1d Positive Throttle Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out70(:,7),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
nexttile;
plot(tout,pitch_out70(:,7),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out70(:,7),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out70(:,7),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,th_in70(:,7),'LineWidth',2);
ylabel('Throttle Input','FontSize',8);
legend('[%]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1dThrottle70PositivePart1.png')

 % Part 2 
 figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1d Positive Throttle Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out70(:,7),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out70(:,7),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out70(:,7),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out70(:,7),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out70(:,7),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1dThrottle70PositivePart2.png')

% Negative 
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1d Negative Throttle Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out70(:,8),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out70(:,8),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out70(:,8),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out70(:,8),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,th_in70(:,8),'LineWidth',2);
ylabel('Throttle Input','FontSize',8);
legend('[%]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1dThrottle70NegativePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1d Negative Throttle Deflection @70 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out70(:,8),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out70(:,8),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out70(:,8),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out70(:,8),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out70(:,8),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1dThrottle70NegativePart2.png')

%%%%%%%%%%%%%%%%%% FOR 110 KNOTS %%%%%%%%%%%%%%%%%%%%
%% Q1a 
% Positive
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1a Positive Elevator Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out110(:,3),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out110(:,3),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out110(:,3),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out110(:,3),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,elev_in110(:,3),'LineWidth',2);
ylabel('Elevator Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1aElevator110PositivePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1a Positive Elevator Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out110(:,3),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out110(:,3),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out110(:,3),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out110(:,3),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out110(:,3),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1aElevator110PositivePart2.png')

% Negative
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1a Negative Elevator Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out110(:,4),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out110(:,4),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out110(:,4),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out110(:,4),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,elev_in110(:,4),'LineWidth',2);
ylabel('Elevator Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1aElevator110NegativePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1a Negative Elevator Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out110(:,4),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out110(:,4),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out110(:,4),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out110(:,4),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out110(:,4),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1aElevator110NegativePart2.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Q1b 
% Positive
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(6,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1b Positive Aileron Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out110(:,1),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out110(:,1),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out110(:,1),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out110(:,1),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out110(:,1),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,aile_in110(:,1),'LineWidth',2);
ylabel('Aileron Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1bAileron110PositivePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1b Positive Aileron Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out110(:,1),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out110(:,1),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out110(:,1),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out110(:,1),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1bAileron110PositivePart2.png')

% Negative
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(6,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1b Negative Aileron Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out110(:,2),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out110(:,2),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out110(:,2),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out110(:,2),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out110(:,2),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,aile_in110(:,2),'LineWidth',2);
ylabel('Aileron Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1bAileron110NegativePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1b Negative Aileron Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out110(:,2),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out110(:,2),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out110(:,2),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out110(:,2),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1bAileron110NegativePart2.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Q1c 
% Positive
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(6,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1c Positive Rudder Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold') 
nexttile;
plot(tout,r_out110(:,5),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out110(:,5),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,p_out110(:,5),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out110(:,5),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out110(:,5),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,rud_in110(:,5),'LineWidth',2);
ylabel('Rudder Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1cRudder110PositivePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1c Positive Rudder Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out110(:,5),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out110(:,5),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out110(:,5),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out110(:,5),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1cRudder110PositivePart2.png')

% Negative 
% Part 1
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(6,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1c Negative Rudder Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,r_out110(:,6),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out110(:,6),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,p_out110(:,6),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out110(:,6),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out110(:,6),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,rud_in110(:,6),'LineWidth',2);
ylabel('Rudder Input','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1cRudder110NegativePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(4,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1c Negative Rudder Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out110(:,6),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,pitch_out110(:,6),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out110(:,6),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out110(:,6),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1cRudder110NegativePart2.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Q1d 
% Positive
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1d Positive Throttle Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out110(:,7),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
nexttile;
plot(tout,pitch_out110(:,7),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out110(:,7),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out110(:,7),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,th_in110(:,7),'LineWidth',2);
ylabel('Throttle Input','FontSize',8);
legend('[%]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1dThrottle110PositivePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1d Positive Throttle Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out110(:,7),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out110(:,7),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out110(:,7),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out110(:,7),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out110(:,7),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1dThrottle110PositivePart2.png')

% Negative
% Part 1 
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1d Negative Throttle Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,q_out110(:,8),'LineWidth',2);
ylabel('Pitch Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
nexttile;
plot(tout,pitch_out110(:,8),'LineWidth',2);
ylabel('Pitch Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,u_out110(:,8),'LineWidth',2);
ylabel('u','FontSize',8);
legend('[m/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,AoA_out110(:,8),'LineWidth',2);
ylabel('AoA(\alpha)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,th_in110(:,8),'LineWidth',2);
ylabel('Throttle Input','FontSize',8);
legend('[%]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1dThrottle110NegativePart1.png')

% Part 2
figure('Position', get(0, 'Screensize'))
ti = tiledlayout(5,1);
xlabel(ti,'Time [s]','FontSize',25,'FontWeight','Bold');
ylabel(ti,'Change in Aircraft States','FontSize',25,'FontWeight','Bold');
title(ti,'Collective Plots of Question 1d Negative Throttle Deflection @110 kt','Interpreter','latex','FontSize',25,'FontWeight','Bold')
 nexttile;
plot(tout,p_out110(:,8),'LineWidth',2);
ylabel('Roll Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,r_out110(:,8),'LineWidth',2);
ylabel('Yaw Rate','FontSize',8);
legend('[deg/s]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,roll_out110(:,8),'LineWidth',2);
ylabel('Roll Angle','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,ss_out110(:,8),'LineWidth',2);
ylabel('SS (\beta)','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
 nexttile;
plot(tout,yaw_out110(:,8),'LineWidth',2);
ylabel('Heading','FontSize',8);
legend('[deg]','Location','southeast');
set(gca,'FontSize',15)
grid on
saveas(gcf,'1dThrottle110NegativePart2.png')

