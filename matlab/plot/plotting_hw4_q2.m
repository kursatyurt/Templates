%% HW 4 Question 2 Plotting

clc;clear all;close all

load('timesavermin')
load('timesavermax')

% % elev_min1 = elev_min(:,1);
% % Vinit_gen1 = Vinit_gen(:,1);
% % elev_min2 = elev_min(:,2);
% % Vinit_gen2 = Vinit_gen(:,2);

%% Elevator to Trim
figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen(:,1),elev_min(:,1),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,2),elev_min(:,2),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,3),elev_min(:,3),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,1),elev_max(:,1),'LineWidth',2);
hold on
plot(Vinit_gen(:,2),elev_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen(:,3),elev_max(:,3),'LineWidth',2);
set(gca,'FontSize',15)
legend('0 ft with min \beta','5k ft with min \beta','8k ft with min \beta',...
    '0 ft with max \beta','5k ft with max \beta','8k ft with max \beta',...
    'FontSize',10,'FontWeight','Bold','Location','northeast')
xlabel('Velocity [knots]','FontSize',18,'FontWeight','Bold');
ylabel('Elevator Angle [degree]','FontSize',18,'FontWeight','Bold');
title('Elevator Angle vs Velocity','Interpreter','latex','FontSize',20,'FontWeight','Bold')
grid on
saveas(gcf,'elevator_q4.png')

%% Pitch Angle to Trim
figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen(:,1),pitch_min(:,1),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,2),pitch_min(:,2),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,3),pitch_min(:,3),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,1),pitch_max(:,1),'LineWidth',2);
hold on
plot(Vinit_gen(:,2),pitch_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen(:,3),pitch_max(:,3),'LineWidth',2);
set(gca,'FontSize',15)
legend('0 ft with min \beta','5k ft with min \beta','8k ft with min \beta',...
    '0 ft with max \beta','5k ft with max \beta','8k ft with max \beta',...
    'FontSize',10,'FontWeight','Bold','Location','northeast')
xlabel('Velocity [knots]','FontSize',18,'FontWeight','Bold');
ylabel('Pitch Angle [degree]','FontSize',18,'FontWeight','Bold');
title('Pitch Angle vs Velocity','Interpreter','latex','FontSize',20,'FontWeight','Bold')
grid on
saveas(gcf,'pitch_q4.png')

%% Throttle to Trim
figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen(:,1),thrott_min(:,1),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,2),thrott_min(:,2),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,3),thrott_min(:,3),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,1),thrott_max(:,1),'LineWidth',2);
hold on
plot(Vinit_gen(:,3),thrott_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen(:,2),thrott_max(:,3),'LineWidth',2);
set(gca,'FontSize',15)
legend('0 ft with min \beta','5k ft with min \beta','8k ft with min \beta',...
    '0 ft with max \beta','5k ft with max \beta','8k ft with max \beta',...
    'FontSize',10,'FontWeight','Bold','Location','southeast')
xlabel('Velocity [knots]','FontSize',18,'FontWeight','Bold');
ylabel('Throttle Lever','FontSize',18,'FontWeight','Bold');
title('Throttle Lever vs Velocity','Interpreter','latex','FontSize',20,'FontWeight','Bold')
grid on
saveas(gcf,'thrott_q4.png')

%% Rudder to Trim
figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen(:,1),rud_min(:,1),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,2),rud_min(:,2),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,3),rud_min(:,3),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,1),rud_max(:,1),'LineWidth',2);
hold on
plot(Vinit_gen(:,2),rud_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen(:,3),rud_max(:,3),'LineWidth',2);
set(gca,'FontSize',15)
legend('0 ft with min \beta','5k ft with min \beta','8k ft with min \beta',...
    '0 ft with \beta','5k ft with max \beta','8k ft with max \beta',...
    'FontSize',10,'FontWeight','Bold','Location','east')
xlabel('Velocity [knots]','FontSize',18,'FontWeight','Bold');
ylabel('Rudder Angle [degree]','FontSize',18,'FontWeight','Bold');
title('Rudder Angle vs Velocity','Interpreter','latex','FontSize',20,'FontWeight','Bold')
grid on
saveas(gcf,'rudder_q4.png')

%% Aileron to Trim
figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen(:,1),aile_min(:,1),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,2),aile_min(:,2),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,3),aile_min(:,3),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,1),aile_max(:,1),'LineWidth',2);
hold on
plot(Vinit_gen(:,2),aile_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen(:,3),aile_max(:,3),'LineWidth',2);
set(gca,'FontSize',15)
legend('0 ft with min \beta','5k ft with min \beta','8k ft with min \beta',...
    '0 ft with max \beta','5k ft with max \beta','8k ft with max \beta',...
    'FontSize',10,'FontWeight','Bold','Location','northeast')
xlabel('Velocity [knots]','FontSize',18,'FontWeight','Bold');
ylabel('Aileron Angle [degree]','FontSize',18,'FontWeight','Bold');
title('Aileron Angle vs Velocity','Interpreter','latex','FontSize',20,'FontWeight','Bold')
grid on
saveas(gcf,'aileron_q4.png')

%% Sideslip to Trim
figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen(:,1),ss_min(:,1),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,2),ss_min(:,2),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,3),ss_min(:,3),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,1),ss_max(:,1),'LineWidth',2);
hold on
plot(Vinit_gen(:,2),ss_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen(:,3),ss_max(:,3),'LineWidth',2);
set(gca,'FontSize',15)
legend('0 ft with min \beta','5k ft with min \beta','8k ft with min \beta',...
    '0 ft with max \beta','5k ft with max \beta','8k ft with max \beta',...
    'FontSize',10,'FontWeight','Bold','Location','east')
xlabel('Velocity [knots]','FontSize',18,'FontWeight','Bold');
ylabel('Sideslip Angle [degree]','FontSize',18,'FontWeight','Bold');
title('Sideslip Angle vs Velocity','Interpreter','latex','FontSize',20,'FontWeight','Bold')
grid on
saveas(gcf,'ss_q4.png')

%% Roll Angle to Trim
figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen(:,1),roll_min(:,1),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,2),roll_min(:,2),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,3),roll_min(:,3),'--','LineWidth',2);
hold on
plot(Vinit_gen(:,1),roll_max(:,1),'LineWidth',2);
hold on
plot(Vinit_gen(:,2),roll_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen(:,3),roll_max(:,3),'LineWidth',2);
set(gca,'FontSize',15)
legend('0 ft with min \beta','5k ft with min \beta','8k ft with min \beta',...
    '0 ft with max \beta','5k ft with max \beta','8k ft with max \beta',...
    'FontSize',10,'FontWeight','Bold','Location','east')
xlabel('Velocity [knots]','FontSize',18,'FontWeight','Bold');
ylabel('Roll Angle [degree]','FontSize',18,'FontWeight','Bold');
title('Roll Angle vs Velocity','Interpreter','latex','FontSize',20,'FontWeight','Bold')
grid on
saveas(gcf,'roll_q4.png')