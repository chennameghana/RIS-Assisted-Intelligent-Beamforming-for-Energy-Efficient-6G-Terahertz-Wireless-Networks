function [RIS_Gain, Phase] = RIS_model(User_Pos, RIS_Pos, RIS)

numUsers = size(User_Pos,1);

RIS_Gain = zeros(numUsers,1);
Phase = zeros(numUsers,1);

for i = 1:numUsers

    % Distance from RIS to User
    d = norm(User_Pos(i,:) - RIS_Pos);

    % Random Phase Shift (0 to 2*pi)
    Phase(i) = 2*pi*rand;

    % RIS Gain with Phase Effect
    RIS_Gain(i) = (RIS/(d+1))*abs(cos(Phase(i)));

end

end