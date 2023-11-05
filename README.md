
# iBus-protocol-library-stm32

This is a library to decode the frame received by RX using the iBus protocol by Flysky.
The library is based on interruption using DMA of STM32H757.


## Project components
* [Aladdin FC board](https://github.com/AladdinBensaid/Aladdin_Flight_Controller) (flight controller based on STM32H757)
* FLYSKY FS-i6X
* FS-IA10B

## Dev environment  
* STM32CubeIDE
* stm32CubeProgrammer 
* STM32 HAL Driver
* iBus library 

## iBus protocol 
* The FlySky iBus is a protocol that uses the UART serial interface to transmit the value of each channel from the receiver.
* Support up to 14 channels 
* Period between two frames is 7ms
* The values received for each channel are between 1000 and 2000
* example of iBus frame
  
  ![8](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/c511ed03-e550-43f8-95d9-a5db0ae31277)

* First byte  0x20 is the protocol length (32 bytes)
* Second byte 0x40 is the command byte
* Next are 14 pairs of bytes, which is the channel  value in little endian byte order (in the example above channel1 is 0x5DC )
* the last two bytes are the checksum in Little Endian (it starts at 0xFFFF, from which every byte's value is subtracted except for the checksum)
  

## STM32CubeIDE configuration
* Enable the right UART Port
* Use 115200 baud rate, 8N1
  
  ![1](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/98365c24-b867-48df-9187-7a1f93961447)

* Create and enable DMA for the UART_RX ( circular mode)
  
  ![2](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/35522126-51db-424c-be52-9f427a0fb704)
  
* In this project I used the USB port to print data received
  
  ![3](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/5ba7ad38-0a23-4c52-aa79-d7eae3b31522)

  ![5](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/12490ef0-0414-4a35-a418-293e84a7e901)

## Software
* You can change the maximum number of channels from the ibus.h file

  ![Screenshot 2023-11-04 032232](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/46111426-caa0-4693-acdd-21d0b8740568)


* in the main.c file you should call the ibus_init_communication(&huart) function with the right UART port you use

   
 ![Screenshot 2023-11-04 032346](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/4a6499b9-87e4-4571-b248-937626a0abd2)


* you need to call the function read_ibus_frame(ibus_data1) to read data from the UART port and the argument will be the buffer to store the channels value


![4](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/7aab64db-2154-4979-b678-72d3f315cdf3)



* this part of the code is to print the data on the serial monitor over the USB port


   ![Screenshot 2023-11-04 032346](https://github.com/AladdinBensaid/iBus-protocol-library-stm32/assets/106270944/3defef5b-6072-4b57-9c89-c5aa9e5b91b6)



