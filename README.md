# ePBL Internship 2026

## Project Title

RIS-Assisted Intelligent Beamforming for Energy-Efficient 6G Terahertz Wireless Networks

## About the Project

This project was developed as part of the ePBL Internship 2026 to study the application of Reconfigurable Intelligent Surfaces (RIS) in 6G Terahertz (THz) wireless communication systems. As wireless communication continues to evolve, future 6G networks require technologies that can provide higher data rates, lower latency, better reliability, and improved energy efficiency. RIS-assisted intelligent beamforming is one of the promising techniques that can help achieve these requirements.

The project is implemented in MATLAB and demonstrates a simple simulation of a 6G THz wireless communication network. The network consists of a Base Station (BS), a Reconfigurable Intelligent Surface (RIS), and multiple users placed at different locations within the coverage area. Initially, random user positions are generated, and the THz channel model is used to calculate the communication distance, free-space path loss, and Signal-to-Noise Ratio (SNR) for each user.

After the channel modeling process, beamforming is applied at the base station to direct the transmitted signal toward the users. This improves the received signal strength by concentrating the transmission in the desired direction. The RIS is then introduced between the base station and the users. The reflecting elements of the RIS apply suitable phase shifts to the reflected signals, allowing the wireless channel to be improved without increasing the transmit power. This helps enhance the received signal quality, especially for users experiencing poor channel conditions.

An AI-based user selection method is also included in the project. Instead of serving every user equally, the program identifies the user with the highest SNR after applying beamforming and RIS. This demonstrates how intelligent decision-making techniques can be combined with wireless communication to improve overall network performance.

The performance of the proposed system is evaluated using several important communication metrics, including Signal-to-Noise Ratio (SNR), Throughput, Bit Error Rate (BER), Spectral Efficiency, and Energy Efficiency. MATLAB is used to generate graphs for each performance parameter, making it easier to compare the communication performance among different users.

Overall, this project provides a simple implementation of RIS-assisted intelligent beamforming and demonstrates how combining THz communication, beamforming, RIS technology, and AI-based user selection can improve wireless communication performance. The project also serves as a basic platform for understanding next-generation 6G communication concepts and can be further extended by incorporating advanced channel models, optimization algorithms, multiple RIS deployments, or machine learning techniques for intelligent beam management.

## Software Used

- MATLAB

## Project Files

- Main.m
- Channel_model.m
- THz_model.m
- Beamforming.m
- RIS_model.m
- AI_model.m
- performance.m
- performance_plots.m
- phase_plot.m
- plots.m
- research_graph.m

## Performance Parameters

The following parameters are evaluated in this project.

- Signal-to-Noise Ratio (SNR)
- Beamforming Gain
- RIS Gain
- RIS Phase Shift
- Throughput
- Bit Error Rate (BER)
- Energy Efficiency
- Spectral Efficiency

## How to Run

1. Download all the project files.
2. Open the folder in MATLAB.
3. Make sure all the `.m` files are in the same folder.
4. Open `Main.m`.
5. Click **Run**.
6. The program displays the results and generates all graphs.

## Project Output

The program generates the following outputs.

- Network model
- SNR comparison
- RIS phase shift
- AI selected user
- Throughput graph
- BER graph
- Energy efficiency graph
- Spectral efficiency graph

## Project Report

The complete project report is included in this repository.

## Author

Chenna Meghana

Department of Electronics and Communication Engineering

Vardhaman College of Engineering

ePBL Internship 2026
