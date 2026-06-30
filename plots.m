function plots(SNR,SNR_BF,SNR_RIS)

figure;

bar([SNR SNR_BF SNR_RIS]);

grid on;

xlabel('User');

ylabel('SNR (dB)');

title('SNR Comparison');

legend('Original','Beamforming','Beamforming + RIS');