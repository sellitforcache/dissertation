#! /usr/bin/env python

import sys

f=open('hexpins','w')
for k in range(4,635):
	f.write('pin '+str(k)+'\n')
	f.write('fuel1 1.00\n')
	f.write('water1\n')
	f.write('\n')

f.write('lat      4  2  0 0 31 31 2.328\n')

d='3 '
f.write('3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3\n')
for k in range(0,15):
	f.write((15-k)*d)
	for j in range( (29*k+k*k)/2 +4 , (29*(k+1)+(k+1)*(k+1))/2 +4):
		f.write(str(j)+' ')
	f.write(' 3\n')
last=(29*15+15*15)/2 +4
for k in reversed(range(0,14)):
	f.write('3 ')
	for j in range( last  , last + ((k+1)*(k+1)-k*k+1)/2+14 ):
		f.write(str(j)+' ')
		last=j+1
	f.write((15-k)*d)
	f.write('\n')
f.write('3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3\n')
f.close()