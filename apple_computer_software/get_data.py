import numpy as np
import re

data = open("dump.txt", "r")
lines = data.readlines()
rown = len(lines)

f = open('data_file.txt', 'w')

# preamble[0] = 1
preamble = [1,0,0,1,0,0,1,0, 1,0,0,1,0,0,1,0, 1,0,0,1,0,0,1,0, 1,0,0,1,0,0,1,0, 1,0,0,1,0,0,1,0, 1,0,0,1,0,0,1,0]

preamble_end = [1,0,0,1,0,0,1,0, 1,0,0,1,0,0,1,0, 1,0,0,1,0,0,1,0]

start_bit = 32
index = 0
while index<rown:
	line = lines[index]
	if len(line)==89:
		byte_data = 0
		for bit_index in range(0,8):
			if int('{:08b}'.format(int(line[start_bit:start_bit+2],16))[::-1][bit_index])+\
			int('{:08b}'.format(int(line[start_bit+2:start_bit+4],16))[::-1][bit_index])+\
			int('{:08b}'.format(int(line[start_bit+4:start_bit+6],16))[::-1][bit_index])>=2:
				byte_data += pow(2,7-bit_index)
			else:
				byte_data += 0

		bits_stream = []
		for bit_index in range(0,len(line)-2,2):
			for tmp in range(0,8):
				bits_stream.append(int('{:08b}'.format(int(line[bit_index:bit_index+2],16))[::-1][tmp]))

		min_val = 72
		mark = 0
		for bit_index in range(31,36,1):
			val = 0
			for tmp in range(0,48):
				if bits_stream[bit_index+tmp]==preamble[tmp]:
					val += 0
				else:
					val += 1

			for tmp in range(0,24):
				if bits_stream[bit_index+48+24*2+tmp]==preamble_end[tmp]:
					val += 0
				else:
					val += 1

			print bit_index, val

			if val<= min_val:
				min_val = val
				mark = bit_index

		print bits_stream[32:32+48]
		tmp = 0
		for i in range(0,48):
			tmp += int(bits_stream[i+32])^int(preamble[i])
		print tmp

		byte_data = []
		for bit_index in range(0,8):
			if bits_stream[mark+48+bit_index]+\
			bits_stream[mark+48+8+bit_index]+\
			bits_stream[mark+48+16+bit_index]>=2:
				byte_data.append(1)
			else:
				byte_data.append(0)
		
		if bits_stream[mark+72+7]+\
			bits_stream[mark+72+8+7]+\
			bits_stream[mark+72+16+7]>=2:
			byte_data = [1]+byte_data
		else:
			byte_data = [0]+byte_data

		if bits_stream[mark+72+6]+\
			bits_stream[mark+72+8+6]+\
			bits_stream[mark+72+16+6]>=2:
			byte_data = [1]+byte_data
		else:
			byte_data = [0]+byte_data

		tmp = 0
		for i in range(0,len(byte_data)):
			tmp += int(byte_data[i])*pow(2,9-i)

		byte_data = []
		for bit_index in range(0,8):
			if bits_stream[mark+48+144+bit_index]+\
			bits_stream[mark+48+8+144+bit_index]+\
			bits_stream[mark+48+16+144+bit_index]>=2:
				byte_data.append(1)
			else:
				byte_data.append(0)
		
		if bits_stream[mark+72+7+144]+\
			bits_stream[mark+72+8+7+144]+\
			bits_stream[mark+72+16+7+144]>=2:
			byte_data = [1]+byte_data
		else:
			byte_data = [0]+byte_data

		if bits_stream[mark+72+6+144]+\
			bits_stream[mark+72+8+6+144]+\
			bits_stream[mark+72+16+6+144]>=2:
			byte_data = [1]+byte_data
		else:
			byte_data = [0]+byte_data

		tmp1 = 0
		for i in range(0,len(byte_data)):
			tmp1 += int(byte_data[i])*pow(2,9-i)
		#if tmp==120:
			#print index, mark
			#print bits_stream[mark+40:mark+40+8], bits_stream[mark+40+8:mark+40+16], bits_stream[mark+40+16:mark+40+24]
			#print bits_stream[mark+64:mark+64+8], bits_stream[mark+64+8:mark+64+16], bits_stream[mark+64+16:mark+64+24]
		f.write(str(tmp)+'\t'+str(tmp1)+'\t'+str(mark)+'\n')

	'''
	print '{:08b}'.format(int(line[start_bit:start_bit+2],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+2:start_bit+4],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+4:start_bit+6],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+6:start_bit+8],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+8:start_bit+10],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+10:start_bit+12],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+12:start_bit+14],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+14:start_bit+16],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+16:start_bit+18],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+18:start_bit+20],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+20:start_bit+22],16))[::-1]
	print '{:08b}'.format(int(line[start_bit+22:start_bit+24],16))[::-1]
	'''
		
	index += 1

f.close()
data.close()
