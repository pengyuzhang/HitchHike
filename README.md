## HitchHike - Practical Backscatter using Commodity WiFi
- Author: Pengyu Zhang
- Contact: pyzhang@stanford.edu


* Description: This repo hosts the hardware and software needed for running the HitchHike ECG sensing demo. We demonstrate that HitchHike can inject the ECG sensor data on top existing WiFi traffic.
*
* Technical paper:
* HitchHike: Practical Backscatter using Commodity WiFi
* Pengyu Zhang, Dinesh Bharadia, Kiran Joshi, Sachin Katti
* SenSys 2016
* Demo paper:
* Enabling backscatter communication among commodity wifi radios
* Pengyu Zhang, Dinesh Bharadia, Kiran Joshi, Sachin Katti
* SIGCOMM 2016
**********************************************************************************

HitchHike_hardware includes the files needed for fabricating the HitchHike PCB board.

HitchHike_FPGA_code includes the files needed for running the codeword translation.

ECG_sensor_hardware inlcudes the files needed for fabricating the ECG sensing PCB board.

ECG_sensor_software inlcudes the files needed for sending the ECG sensor data to the HitchHike hardware platform.

apple_computer_software inlcudes the files needed for receiving the backscattered WiFi packets and extracting the ECG sensor data.

Details of how to run the HitchHike system is shown in the following document.

https://docs.google.com/document/d/1yD-POD4OKe0HTxtUZdOaUgfRqkNDYJDK3f1_O2Xi9FA