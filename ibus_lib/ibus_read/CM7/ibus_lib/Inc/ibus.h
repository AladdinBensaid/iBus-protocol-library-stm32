/*
 * ibus.h
 * Author: Ala Bensaid
 */
#ifndef __IBUS_H__
#define __IBUS_H__


#include "stdbool.h"
#include "main.h"
#include "stm32h7xx_hal_conf.h"
#include "stm32h7xx_it.h"

/* Constants */
#define IBUS_USER_CHANNELS		14		// Maximum  14 channels for ibus protocol
#define IBUS_LENGTH				0x20	// 32 bytes
#define IBUS_COMMAND			0x40    // constant command

/* Main Functions */
void ibus_init(int uart);
bool read_ibus_frame(uint16_t* ibus_data);
/* Sub Functions */
bool check_ibus () ; 
void read_ibus_channels(uint16_t *ibus_data) ; 

#endif /* __IBUS_H__ */
