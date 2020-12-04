%Init loading file
close all; clear; clc; 

h_ft = [0 2000 5000 8000 10000 12000]; %ft
Vstall = [56.5741,58.2632,60.9620,63.8152,65.8387,67.9566]; %knots
Vmax = [123 124 122 115 107 93]; %knots

load('timesavermin.mat');
load('timesavermax.mat');

Vinit_gen_min = flipud(Vinit_gen_min);
fpa_min = flipud(fpa_min);
roll_min = flipud(roll_min);
elev_min = flipud(elev_min);
thrott_min = flipud(thrott_min);
rud_min = flipud(rud_min);
aile_min = flipud(aile_min);
ss_min = flipud(ss_min);
pitch_min = flipud(pitch_min);
vs_u_min = flipud(vs_u_min);
vs_v_min = flipud(vs_v_min);
vs_w_min = flipud(vs_w_min);


%%%%%%%%%%%%%%%%%PLOTTING PART%%%%%%%%%%%%%%%%%%%%%%
figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),fpa_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),fpa_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),fpa_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),fpa_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),fpa_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),fpa_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),fpa_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(1:14,2),fpa_max(1:14,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:13,3),fpa_max(1:13,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:11,4),fpa_max(1:11,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:9,5),fpa_max(1:9,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:6,6),fpa_max(1:6,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','southwest','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Flight Path Angle [degree]','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'fpa.png','png');

figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),aile_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),aile_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),aile_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),aile_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),aile_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),aile_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),aile_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(:,2),aile_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:14,3),aile_max(1:14,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:12,4),aile_max(1:12,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:10,5),aile_max(1:10,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:7,6),aile_max(1:7,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','northeast','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Aileron Angle [degree]','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'aile.png','png');


figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),elev_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),elev_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),elev_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),elev_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),elev_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),elev_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),elev_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(:,2),elev_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:14,3),elev_max(1:14,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:12,4),elev_max(1:12,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:10,5),elev_max(1:10,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:7,6),elev_max(1:7,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','northeast','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Elevator Angle [degree]','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'elev.png')

figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),rud_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),rud_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),rud_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),rud_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),rud_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),rud_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),rud_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(:,2),rud_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:14,3),rud_max(1:14,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:12,4),rud_max(1:12,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:10,5),rud_max(1:10,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:7,6),rud_max(1:7,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','southeast','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Rudder Angle [degree]','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'rud.png')

figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),pitch_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),pitch_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),pitch_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),pitch_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),pitch_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),pitch_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),pitch_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(:,2),pitch_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:14,3),pitch_max(1:14,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:12,4),pitch_max(1:12,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:10,5),pitch_max(1:10,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:7,6),pitch_max(1:7,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','northeast','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Pitch Angle [degree]','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'pitch.png')

figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),roll_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),roll_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),roll_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),roll_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),roll_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),roll_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),roll_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(:,2),roll_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:14,3),roll_max(1:14,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:12,4),roll_max(1:12,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:10,5),roll_max(1:10,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:7,6),roll_max(1:7,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','southeast','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Roll Angle [degree]','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'roll.png')

figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),ss_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),ss_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),ss_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),ss_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),ss_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),ss_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),ss_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(:,2),ss_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:14,3),ss_max(1:14,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:12,4),ss_max(1:12,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:10,5),ss_max(1:10,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:7,6),ss_max(1:7,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','northeast','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Sideslip Angle [degree]','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'ss.png')

figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),thrott_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),thrott_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),thrott_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),thrott_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),thrott_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),thrott_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),thrott_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(:,2),thrott_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:14,3),thrott_max(1:14,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:12,4),thrott_max(1:12,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:10,5),thrott_max(1:10,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:7,6),thrott_max(1:7,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','northeast','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Throttle Lever ','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'thrott.png')

figure('units','normalized','outerposition',[0 0 0.5 0.8])
plot(Vinit_gen_min(:,1),vs_w_min(:,1),'--','LineWidth',2);  
hold on
plot(Vinit_gen_min(2:15,2),vs_w_min(2:15,2),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(2:15,3),vs_w_min(2:15,3),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(4:15,4),vs_w_min(4:15,4),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(6:15,5),vs_w_min(6:15,5),'--','LineWidth',2);
hold on
plot(Vinit_gen_min(9:15,6),vs_w_min(9:15,6),'--','LineWidth',2);
hold on
plot(Vinit_gen_max(:,1),vs_w_max(:,1),'LineWidth',2);  
hold on
plot(Vinit_gen_max(:,2),vs_w_max(:,2),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:14,3),vs_w_max(1:14,3),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:12,4),vs_w_max(1:12,4),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:10,5),vs_w_max(1:10,5),'LineWidth',2);
hold on
plot(Vinit_gen_max(1:7,6),vs_w_max(1:7,6),'LineWidth',2);
hold off
set(gca,'FontSize',20)
legend('sea level w min \gamma','2k ft w min \gamma','5k ft w min \gamma','8k ft w min \gamma','10k ft w min \gamma','12k ft w min \gamma', ...
    'sea level w max \gamma','2k ft w max \gamma','5k ft w max \gamma','8k ft w max \gamma','10k ft w max \gamma','12k ft w max \gamma',...
    'Location','northwest','FontSize',10,'FontWeight','Bold')
xlabel('Velocity [knots]','FontSize',25,'FontWeight','Bold');
ylabel('Vertical Speed [ftpm] ','FontSize',25,'FontWeight','Bold');
grid on
saveas(gcf,'vert.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%EXTRA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure('Position', get(0, 'Screensize'))
% figure('units','normalized','outerposition',[0 0 1 1])
% FigH = figure('Position', get(0, 'Screensize'));
% set(gcf, 'PaperUnits', 'centimeters');
% set(gcf, 'PaperPositionMode', 'manual','PaperPosition',[0 0 100 50]);


% hgexport(gcf, 'figure1.png', hgexport('factorystyle'), 'Format', 'png')