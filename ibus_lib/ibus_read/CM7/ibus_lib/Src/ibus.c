#include "ibus.h" 

static uint8_t rx_buffer[IBUS_LENGTH] = {0};


void ibus_init_communication(int uart)
{
	HAL_UART_Receive_DMA (uart, rx_buffer, 32);  //initialize the UART to receive data and store it in the rx_buffer array
}



bool read_ibus_frame(uint16_t *ibus_data) //decoding the RX frame and returning channels values
{
	if(!check_ibus()){
				return false ;
	}
	read_ibus_channels(ibus_data);
	return true;
}




bool check_ibus ()
{
// check if the frame correspond to the right Ibus protocol format
uint16_t checksum_cal = 0xffff;
uint16_t checksum_ibus;	
// checking the start command
if(! (rx_buffer[0] == IBUS_LENGTH && rx_buffer[1] == IBUS_COMMAND))
	{
   return false;
	}
// checking the checksum  (0xFFFF - (sum of 30 bytes))
for(int i = 0; i < 30; i++)
	{
		checksum_cal -= rx_buffer[i];
	}
checksum_ibus = rx_buffer[31] << 8 | rx_buffer[30]; // checksum value from ibus
return (checksum_ibus == checksum_cal);
}





void read_ibus_channels(uint16_t *ibus_data)
{
// return the value of each channels in the ibus_data array
for(int ch_index = 0, bf_index = 2; ch_index < IBUS_USER_CHANNELS; ch_index++, bf_index += 2)
	{
		ibus_data[ch_index] = rx_buffer[bf_index + 1] << 8 | rx_buffer[bf_index];
	}
}

