clc;
clear;
close all;

disp('==============================================');
disp('RIS-Assisted Intelligent Beamforming');
disp('for Energy-Efficient 6G THz Wireless Networks');
disp('==============================================');

%% System Parameters
fc = 300e9;      % Carrier Frequency (300 GHz)
BW = 10e9;       % Bandwidth
Nt = 64;         % Base Station Antennas
RIS = 100;       % RIS Elements
Users = 5;       % Number of Users

% Base Station Position
BS = [0 0];

% RIS Position
RIS_Pos = [50 50];

% Generate User Locations
User_Pos = Channel_model(Users);
% THz Channel
[distance,pathLoss,SNR] = THz_model(BS,User_Pos);

disp('--------------------------------');
disp('User Information');
disp('--------------------------------');

for i=1:Users

    fprintf('User %d\n',i);
    fprintf('Distance = %.2f meters\n',distance(i));
    fprintf('Path Loss = %.2e\n',pathLoss(i));
    fprintf('SNR = %.2f dB\n\n',SNR(i));

end

% Display Network
figure;
hold on;
grid on;

plot(BS(1),BS(2),'bs','MarkerSize',12,'MarkerFaceColor','b');
plot(RIS_Pos(1),RIS_Pos(2),'gd','MarkerSize',12,'MarkerFaceColor','g');
scatter(User_Pos(:,1),User_Pos(:,2),100,'r','filled');

legend('Base Station','RIS','Users');

xlabel('X Position (m)');
ylabel('Y Position (m)');
title('6G THz Network with RIS');

axis([0 100 0 100]);

%% Beamforming

Gain = Beamforming(BS,User_Pos,Nt);

disp('------------------------------');
disp('Beamforming Gain');
disp('------------------------------');

for i=1:Users

    fprintf('User %d Gain = %.2f\n',i,Gain(i));

end
SNR_BF = SNR + 10*log10(Gain);

disp(' ');
disp('SNR After Beamforming');

for i=1:Users

    fprintf('User %d = %.2f dB\n',i,SNR_BF(i));

end
%% RIS
[RIS_Gain, Phase] = RIS_model(User_Pos,RIS_Pos,RIS);

disp(' ');
disp('RIS Gain');

for i = 1:Users

    fprintf('User %d = %.2f\n',i,RIS_Gain(i));

end
disp(' ');
disp('RIS Phase Shifts');

for i = 1:Users

    fprintf('User %d = %.2f radians\n',i,Phase(i));

end

SNR_RIS = SNR_BF + 10*log10(RIS_Gain);

disp(' ');
disp('SNR After RIS');

for i = 1:Users

    fprintf('User %d = %.2f dB\n',i,SNR_RIS(i));

end
%% AI Beam Selection

[Best_User, Max_SNR] = AI_model(SNR_RIS);

disp(' ');
disp('===============================');
disp('AI Beamforming Result');
disp('===============================');

fprintf('Best User Selected : %d\n', Best_User);
fprintf('Maximum SNR        : %.2f dB\n', Max_SNR);
plots(SNR,SNR_BF,SNR_RIS);
figure;

scatter(User_Pos(:,1),User_Pos(:,2),100,'b','filled');
hold on;

scatter(User_Pos(Best_User,1),...
    User_Pos(Best_User,2),...
    250,'r','filled');

plot(BS(1),BS(2),'ks','MarkerSize',12,'MarkerFaceColor','k');
plot(RIS_Pos(1),RIS_Pos(2),'gd','MarkerSize',12,'MarkerFaceColor','g');

grid on;

legend('Users','Best User','Base Station','RIS');

title('AI Selected User');

xlabel('X Position (m)');
ylabel('Y Position (m)');
%% Performance Analysis

[Throughput, EE, BER, SE] = performance(SNR_RIS, BW);

disp(' ');
disp('Performance Metrics');

for i = 1:Users

    fprintf('User %d\n',i);
    fprintf('Throughput = %.2f Mbps\n',Throughput(i)/1e6);
    fprintf('Energy Efficiency = %.2f Mb/J\n',EE(i)/1e6);
    fprintf('BER = %.6f\n',BER(i));
    fprintf('Spectral Efficiency = %.2f bits/s/Hz\n\n',SE(i));

end
performance_plots(Throughput,EE);
phase_plot(Phase);
research_graph(SNR_RIS, BER, Throughput, EE, SE);