function [Best_User, Max_SNR] = AI_model(SNR_RIS)

% Find the user with the highest SNR
[Max_SNR, Best_User] = max(SNR_RIS);

end