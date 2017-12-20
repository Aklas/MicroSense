/*
 * info.h
 *
 *  Created on: Dec 2, 2017
 *      Author: Aklas
 */

#ifndef SRC_INFO_H_
#define SRC_INFO_H_

struct image{
	int16_t data[11*10];
	int8_t height;
	int8_t width;
	int16_t posX;
	int16_t posY;
	int16_t background;
};

struct groundStruct{
	int16_t data[240*5];
	int8_t height;
	int8_t width;
	int16_t posX;
	int16_t posY;
	int16_t background;
};

#endif /* SRC_INFO_H_ */
