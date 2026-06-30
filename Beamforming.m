function Gain = Beamforming(BS, User_Pos, Nt)

% Beamforming Gain Calculation

numUsers = size(User_Pos,1);
Gain = zeros(numUsers,1);

for i = 1:numUsers

    % Distance from BS to User
    d = norm(User_Pos(i,:) - BS);

    % Simple Beamforming Gain (MRT approximation)
    Gain(i) = Nt/(d+1);

end

end