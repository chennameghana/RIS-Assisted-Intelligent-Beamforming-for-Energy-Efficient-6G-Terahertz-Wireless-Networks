function research_graph(SNR_RIS, BER, Throughput, EE, SE)

Users = 1:length(SNR_RIS);

%% Graph 1 - SNR
figure;
plot(Users,SNR_RIS,'-o','LineWidth',2);
grid on;
xlabel('Users');
ylabel('SNR (dB)');
title('SNR vs Users');

%% Graph 2 - BER
figure;
semilogy(Users,BER,'-s','LineWidth',2);
grid on;
xlabel('Users');
ylabel('Bit Error Rate');
title('BER vs Users');

%% Graph 3 - Throughput
figure;
plot(Users,Throughput/1e9,'-*','LineWidth',2);
grid on;
xlabel('Users');
ylabel('Throughput (Gbps)');
title('Throughput vs Users');

%% Graph 4 - Energy Efficiency
figure;
plot(Users,EE/1e9,'-d','LineWidth',2);
grid on;
xlabel('Users');
ylabel('Energy Efficiency (Gb/J)');
title('Energy Efficiency vs Users');

%% Graph 5 - Spectral Efficiency
figure;
plot(Users,SE,'-^','LineWidth',2);
grid on;
xlabel('Users');
ylabel('Spectral Efficiency (bits/s/Hz)');
title('Spectral Efficiency vs Users');

end