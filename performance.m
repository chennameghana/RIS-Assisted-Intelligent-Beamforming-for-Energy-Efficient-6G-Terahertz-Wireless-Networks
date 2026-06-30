function [Throughput, EE, BER, SE] = performance(SNR_RIS, BW)

numUsers = length(SNR_RIS);

Throughput = zeros(numUsers,1);
EE = zeros(numUsers,1);
BER = zeros(numUsers,1);
SE = zeros(numUsers,1);

Power = 10;      % Watts

for i = 1:numUsers

    snrLinear = 10^(SNR_RIS(i)/10);

    % Spectral Efficiency
    SE(i) = log2(1 + snrLinear);

    % Throughput
    Throughput(i) = BW * SE(i);

    % Energy Efficiency
    EE(i) = Throughput(i)/Power;

    % BER (Approximation)
    BER(i) = 0.5*erfc(sqrt(snrLinear));

end

end