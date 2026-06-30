function phase_plot(Phase)

figure

stem(Phase,'filled')

grid on

xlabel('User')

ylabel('Phase (Radians)')

title('RIS Phase Shift')