function [distance, pathLoss, SNR] = THz_model(BS, User_Pos)

% Parameters
fc = 300e9;          % 300 GHz
c = 3e8;             % Speed of light
Pt = 1;              % Transmit Power (1 Watt)
Noise = 1e-9;        % Noise Power

numUsers = size(User_Pos,1);

distance = zeros(numUsers,1);
pathLoss = zeros(numUsers,1);
SNR = zeros(numUsers,1);

for i = 1:numUsers

    % Distance
    distance(i) = norm(User_Pos(i,:) - BS);

    % Free Space Path Loss
    pathLoss(i) = (4*pi*distance(i)*fc/c)^2;

    % Received Power
    Pr = Pt/pathLoss(i);

    % Signal to Noise Ratio
    SNR(i) = 10*log10(Pr/Noise);

end

end