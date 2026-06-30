function performance_plots(Throughput,EE)

figure

subplot(2,1,1)

bar(Throughput/1e9)

grid on

title('Throughput')

ylabel('Gbps')

subplot(2,1,2)

bar(EE/1e9)

grid on

title('Energy Efficiency')

ylabel('Gb/J')