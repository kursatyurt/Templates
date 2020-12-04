%% Eigenvalue Plotting
clc; clear all; close all

load('matrixsaver')

%% Sea Level 
%70 knots
A70eig = eig((A70(:,:,1)));
figure('units','normalized','outerposition',[0 0 0.5 0.8]) 
scatter(real(A70eig), imag(A70eig),'*');
legend('Eigenvalues @70 kt')
xlabel('Re','FontSize',12,'FontWeight','Bold')
ylabel('Im','FontSize',12,'FontWeight','Bold')
title('Eigenvalues of A Matrix @70 kt','Interpreter','latex','FontSize',15,'FontWeight','Bold')
set(gca,'FontSize',12)
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
grid on
saveas(gcf,'A0_70.png')


%% Sea Level 
% 57 knots to 123 knots
A0_57 = eig((A_fin0(:,:,1)));
A0_62 = eig((A_fin0(:,:,2)));
A0_67 = eig((A_fin0(:,:,3)));
A0_72 = eig((A_fin0(:,:,4)));
A0_77 = eig((A_fin0(:,:,5)));
A0_82 = eig((A_fin0(:,:,6)));
A0_87 = eig((A_fin0(:,:,7)));
A0_92 = eig((A_fin0(:,:,8)));
A0_97 = eig((A_fin0(:,:,9)));
A0_102 = eig((A_fin0(:,:,10)));
A0_107 = eig((A_fin0(:,:,11)));
A0_112 = eig((A_fin0(:,:,12)));
A0_117 = eig((A_fin0(:,:,13)));
A0_122 = eig((A_fin0(:,:,14)));
A0_123 = eig((A_fin0(:,:,15)));
figure('Position', get(0, 'Screensize'))
scatter(real(A0_57), imag(A0_57),'*');
hold on
scatter(real(A0_62), imag(A0_62),'o');
hold on 
scatter(real(A0_67), imag(A0_67),'+');
hold on
scatter(real(A0_72), imag(A0_72),'.');
hold on
scatter(real(A0_77), imag(A0_77),'x');
hold on 
scatter(real(A0_82), imag(A0_82),'d');
hold on 
scatter(real(A0_87), imag(A0_87),'*');
hold on 
scatter(real(A0_92), imag(A0_92),'^');
hold on 
scatter(real(A0_97), imag(A0_97),'p');
hold on 
scatter(real(A0_102), imag(A0_102),'h');
hold on 
scatter(real(A0_107), imag(A0_107),'s');
hold on 
scatter(real(A0_112), imag(A0_112),'v');
hold on 
scatter(real(A0_117), imag(A0_117),'>');
hold on 
scatter(real(A0_122), imag(A0_122),'<');
hold on 
scatter(real(A0_123), imag(A0_123),'*');
legend('57 knots','62 knots','67 knots','72 knots','77 knots','82 knots','87 knots','92 knots','97 knots','102 knots','107 knots','112 knots','117 knots','122 knots','123 knots','Location','northwest')
xlabel('Re','FontSize',12,'FontWeight','Bold')
ylabel('Im','FontSize',12,'FontWeight','Bold')
title('Eigenvalues of A Matrix at Sea Level for Different Speed Values','Interpreter','latex','FontSize',15,'FontWeight','Bold')
set(gca,'FontSize',12)
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
grid on
saveas(gcf,'A0_stalltomax.png')

%% 5000 ft 
% 61 knots to 122 knots
A5k_61 = eig((A_fin5k(:,:,1)));
A5k_66 = eig((A_fin5k(:,:,2)));
A5k_71 = eig((A_fin5k(:,:,3)));
A5k_76 = eig((A_fin5k(:,:,4)));
A5k_81 = eig((A_fin5k(:,:,5)));
A5k_86 = eig((A_fin5k(:,:,6)));
A5k_91 = eig((A_fin5k(:,:,7)));
A5k_96 = eig((A_fin5k(:,:,8)));
A5k_101 = eig((A_fin5k(:,:,9)));
A5k_106 = eig((A_fin5k(:,:,10)));
A5k_111 = eig((A_fin5k(:,:,11)));
A5k_116 = eig((A_fin5k(:,:,12)));
A5k_121 = eig((A_fin5k(:,:,13)));
A5k_122 = eig((A_fin5k(:,:,14)));
figure('Position', get(0, 'Screensize'))
scatter(real(A5k_61), imag(A5k_61),'*');
hold on
scatter(real(A5k_66), imag(A5k_66),'o');
hold on 
scatter(real(A5k_71), imag(A5k_71),'+');
hold on
scatter(real(A5k_76), imag(A5k_76),'.');
hold on
scatter(real(A5k_81), imag(A5k_81),'x');
hold on 
scatter(real(A5k_86), imag(A5k_86),'d');
hold on 
scatter(real(A5k_91), imag(A5k_91),'*');
hold on 
scatter(real(A5k_96), imag(A5k_96),'^');
hold on 
scatter(real(A5k_101), imag(A5k_101),'p');
hold on 
scatter(real(A5k_106), imag(A5k_106),'h');
hold on 
scatter(real(A5k_111), imag(A5k_111),'s');
hold on 
scatter(real(A5k_116), imag(A5k_116),'v');
hold on 
scatter(real(A5k_121), imag(A5k_121),'>');
hold on 
scatter(real(A5k_122), imag(A5k_122),'<');
legend('61 knots','66 knots','71 knots','76 knots','81 knots','86 knots','91 knots','96 knots','101 knots','106 knots','111 knots','116 knots','121 knots','122 knots')
xlabel('Re','FontSize',12,'FontWeight','Bold')
ylabel('Im','FontSize',12,'FontWeight','Bold')
title('Eigenvalues of A Matrix at 5000 ft for Different Speed Values','Interpreter','latex','FontSize',15,'FontWeight','Bold')
set(gca,'FontSize',12)
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
grid on
saveas(gcf,'A5k_stalltomax.png')