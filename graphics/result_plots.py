#! /usr/bin/env python

from termcolor import colored
from pyne import ace
import numpy as np
import pylab as pl
from mpl_toolkits.mplot3d import Axes3D
from matplotlib.patches import FancyArrowPatch
from mpl_toolkits.mplot3d import proj3d
import os
import sys
import re
from matplotlib.font_manager import FontProperties

#
#  Get input arguments
#
plot = len(sys.argv)-1


#
#  set latex and font
#  !!!! THIS BREAKS THE PLOTS BUT THEY RENDER BEAUTIFULLY IN THE .eps FILE !!!!
if plot:
	print colored(' --- Plotting without LaTeX, NO FILES WRITTEN','red')
else:
	print colored(' --- Rendering .eps files with LaTeX enabled','green')
	pl.rc('text', usetex=True)
	pl.rc('font', family='serif')
def get_serpent_det(filepath):
	fobj    = open(filepath)
	fstr    = fobj.read()
	names   = re.findall('[a-zA-Z]+ *= *\[',fstr)
	data    = re.findall('\[ *\n[\w\s+-.]+\]',fstr)
	alldata = dict()
	dex     = 0
	for name in names:
		varname  = name.split()[0]
		moredata = re.findall(' [ .+-eE0-9^\[]+\n',data[dex])
		thisarray = np.array(moredata[0].split(),dtype=float)
		for line in moredata[1:]:
			thisarray=np.vstack((thisarray,np.array(line.split(),dtype=float)))
		alldata[varname]=np.mat(thisarray)
		dex = dex + 1
	return alldata


#
#  scatter error
#
if(os.path.isfile('/Users/rmb/code/gpu-cpp/isowater.tally')):
	name = 'scattering_error'
	tally      = np.loadtxt('/Users/rmb/code/gpu-cpp/isowater.tally')
	tallybins  = np.loadtxt('/Users/rmb/code/gpu-cpp/isowater.tallybins')
	serpdata   = get_serpent_det('/Users/rmb/code/serpent-benchmark/nonfiss_mono2_det0.m')
	widths=np.diff(tallybins)
	avg=(tallybins[:-1]+tallybins[1:])/2
	#newflux = np.multiply(tally[:-1,1],tally[:-1,0])
	#newflux = np.divide(newflux,np.add(tally[:-1,1],1.0))
	newflux=np.array(tally[:,0])
	newflux=np.divide(newflux,widths)
	newflux=np.multiply(newflux,avg)
	#newflux=np.divide(newflux,40e5)
	newflux=np.divide(newflux,np.max(newflux))
	
	serpE=np.array(serpdata['DETfluxlogE'][:,2])
	serpF=np.array(serpdata['DETfluxlog'][:,10])
	serpF=np.divide(serpdata['DETfluxlog'][:,10],np.max(serpdata['DETfluxlog'][:,10]))
	serpE = np.squeeze(np.asarray(serpE))
	serpF = np.squeeze(np.asarray(serpF))
	
	fig = pl.figure(figsize=(10,6))
	ax = fig.add_subplot(1,1,1)
	p1=ax.semilogx(serpE,serpF,'b',avg,newflux,'r',linestyle='steps-mid')
	ax.set_xlabel('Energy (MeV)')
	ax.set_ylabel('Normalized Flux/Lethary')
	ax.set_title('4e6 histories 1x1x1m block of water @ 1 g/cc.  2MeV point source @ (0,0,0)')
	pl.legend(p1,['Serpent 2.1.15','WARP'],loc=2)
	ax.set_ylim([0,.06])
	ax.set_xlim([1e-2,3])
	pl.grid(True)
	
	if plot:
		pl.show()
	else:
		print name+'.eps'
		fig.savefig(name+'.eps')

#
#  scatter anisotropy
#
name = 'scattering_anisotropy'
tope_number=8016
temp_extension='.03c'
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib = lib.find_table(str(tope_number)+temp_extension)
tempstr = '%6.2f' % (lib.temp/8.617332478e-11)

fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
x1 = lib.reactions[2].ang_cos[1]
y1 = lib.reactions[2].ang_pdf[1]
x2 = lib.reactions[2].ang_cos[80]
y2 = lib.reactions[2].ang_pdf[80]
x3 = lib.reactions[2].ang_cos[114]
y3 = lib.reactions[2].ang_pdf[114]
p1=ax.plot(x1,y1,'b',x2,y2,'g',x3,y3,'r')
ax.set_xlabel(r'$\mu$')
ax.set_ylabel('PDF')
ax.set_title('Elastic scattering kernels for oxygen-16')
pl.legend(p1,['31.8 eV','0.5 MeV','1.0 MeV'],loc=2)
#ax.set_ylim([0,.06])
#ax.set_xlim([1e-2,3])
pl.grid(True)

if plot:
	pl.show()
else:
	print name+'.eps'
	fig.savefig(name+'.eps')
	
#
#  2d prelim geom
#
name = 'prelim_geom'	
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.plot([.1,.4,.4,.1,.1],[.1,.1,.4,.4,.1],color=[1, 0, 0])
ax.plot([.6,.9,.9,.6,.6],[.6,.6,.9,.9,.6],color=[1, 0, 0])
ax.plot([.1,.4,.4,.1,.1],[.6,.6,.9,.9,.6],color=[1, 0, 0])
ax.plot([.6,.9,.9,.6,.6],[.1,.1,.4,.4,.1],color=[1, 0, 0])
ax.text(.23  , .7,  'CELL 4 \n$\Sigma_a=0.6$  \n$\Sigma_s=0.4$')
ax.text(.23  , .2,  'CELL 1 \n$\Sigma_a=0.0$  \n$\Sigma_s=2.0$')
ax.text(.675 , .7,  'CELL 3 \n$\Sigma_a=0.6$  \n$\Sigma_s=0.4$')
ax.text(.675 , .2,  'CELL 2 \n$\Sigma_a=0.6$  \n$\Sigma_s=0.4$')
ax.text(.45  , .45,'CELL 0 \n$\Sigma_a=0.01$ \n$\Sigma_s=0.4$')
ax.set_xlim([0, 1])
ax.set_ylim([0, 1])
ax.set_xlabel(r'$x$ (cm)')
ax.set_ylabel(r'$y$ (cm)')

if plot:
	pl.show()
else:
	print name+'.eps'
	fig.savefig(name+'.eps')
	
#
#  2d prelim results 
#

N=np.array([100, 300      ,800      ,1000     ,3000     ,8000     ,10000    ,30000    ,80000     ,100000   ,300000   ,800000    ,1000000  ,2000000  , 3000000 ,4000000 , 5000000 ,6000000 ,7000000 ,8000000 ,9000000 ,10000000,20000000,30000000,40000000,50000000,60000000,70000000,80000000,90000000])

f_cpu1				=open('prelim/timings-scatter/timings-0.1/timing_cpu_128_0.1_sm_20')
f_cpu2				=open('prelim/timings-scatter/timings-0.1/timing_cpu_512_0.1_sm_20')
f_gpu_task_128		=open('prelim/timings-scatter/timings-0.1/timing_gpu_128_0.1_sm_20')
f_gpu_task_512		=open('prelim/timings-scatter/timings-0.1/timing_gpu_512_0.1_sm_20')
f_gpu_data_batch_128=open('prelim/timings-scatter/timings-0.1/timing_gpu5_128_0.1_sm_20')
f_gpu_data_batch_512=open('prelim/timings-scatter/timings-0.1/timing_gpu5_512_0.1_sm_20')
f_gpu_data_large_128=open('prelim/timings-scatter/timings-0.1/timing_gpu6_128_0.1_sm_20')
f_gpu_data_large_512=open('prelim/timings-scatter/timings-0.1/timing_gpu6_512_0.1_sm_20')

cpu1					=np.array(f_cpu1.read().split()					,dtype=float)
cpu2					=np.array(f_cpu2.read().split()					,dtype=float)
gpu_task_128_01			=np.array(f_gpu_task_128.read().split()			,dtype=float)
gpu_task_512_01			=np.array(f_gpu_task_512.read().split()			,dtype=float)
gpu_data_batch_128_01	=np.array(f_gpu_data_batch_128.read().split()	,dtype=float)
gpu_data_batch_512_01	=np.array(f_gpu_data_batch_512.read().split()	,dtype=float)
gpu_data_large_128_01	=np.array(f_gpu_data_large_128.read().split()	,dtype=float)	
gpu_data_large_512_01	=np.array(f_gpu_data_large_512.read().split()	,dtype=float)
cpu_01 =(cpu1+cpu2)/2.0

f_cpu1				=open('prelim/timings-scatter/timings-0.01/timing_cpu_128_0.01_sm_20')
f_cpu2				=open('prelim/timings-scatter/timings-0.01/timing_cpu_512_0.01_sm_20')
f_gpu_task_128		=open('prelim/timings-scatter/timings-0.01/timing_gpu_128_0.01_sm_20')
f_gpu_task_512		=open('prelim/timings-scatter/timings-0.01/timing_gpu_512_0.01_sm_20')
f_gpu_data_batch_128=open('prelim/timings-scatter/timings-0.01/timing_gpu5_128_0.01_sm_20')
f_gpu_data_batch_512=open('prelim/timings-scatter/timings-0.01/timing_gpu5_512_0.01_sm_20')
f_gpu_data_large_128=open('prelim/timings-scatter/timings-0.01/timing_gpu6_128_0.01_sm_20')
f_gpu_data_large_512=open('prelim/timings-scatter/timings-0.01/timing_gpu6_512_0.01_sm_20')

cpu3					=np.array(f_cpu1.read().split()					,dtype=float)
cpu4					=np.array(f_cpu2.read().split()					,dtype=float)
gpu_task_128_001		=np.array(f_gpu_task_128.read().split()			,dtype=float)
gpu_task_512_001		=np.array(f_gpu_task_512.read().split()			,dtype=float)
gpu_data_batch_128_001	=np.array(f_gpu_data_batch_128.read().split()	,dtype=float)
gpu_data_batch_512_001	=np.array(f_gpu_data_batch_512.read().split()	,dtype=float)
gpu_data_large_128_001	=np.array(f_gpu_data_large_128.read().split()	,dtype=float)	
gpu_data_large_512_001	=np.array(f_gpu_data_large_512.read().split()	,dtype=float)
cpu_001 =(cpu3+cpu4)/2.0
         
active_batch=np.array([
8388480,
6989971,
5616003,
4483418,
3577907,
2856565,
2281521,
1821622,
1455824,
1163384,
929883,
743982,
595361,
476282,
381024,
304976,
243805,
195044,
156180,
124679,
99536,
79573,
63892,
51060,
40712,
32552,
26087,
20909,
16760,
13317,
10678,
8504,
6803,
5475,
4384,
3540,
2815,
2260,
1779,
1416,
1111,
908,
725,
594,
483,
382,
307,
241,
190,
145,
127,
108,
91,
78,
59,
49,
43,
33,
25,
18,
11,
9,
8,
7,
6,
6,
6,
6,
6,
4,
2,
1,
1,
1,
1,
1,
8388480,
6991352,
5616131,
4482690,
3577697,
2855706,
2279989,
1822024,
1455179,
1163638,
930330,
744378,
595559,
476119,
380097,
304183,
243172,
194322,
155462,
124360,
99635,
79876,
63655,
50934,
40710,
32483,
25926,
20750,
16651,
13334,
10681,
8556,
6847,
5492,
4385,
3525,
2783,
2206,
1781,
1428,
1148,
931,
753,
613,
476,
392,
317,
254,
214,
174,
149,
122,
101,
79,
70,
56,
48,
39,
32,
22,
19,
14,
14,
13,
10,
10,
9,
8,
7,
6,
5,
5,
5,
4,
4,
3,
3,
3,
2,
2,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
8388480,
6991725,
5618433,
4484376,
3578925,
2856971,
2281724,
1824029,
1457633,
1165693,
931667,
745095,
595849,
476399,
380926,
304656,
244072,
195028,
156008,
124667,
99498,
79595,
63700,
50947,
40593,
32502,
25914,
20733,
16616,
13344,
10698,
8627,
6891,
5579,
4454,
3537,
2846,
2287,
1844,
1489,
1176,
929,
736,
600,
484,
377,
304,
248,
193,
158,
128,
110,
87,
72,
63,
53,
39,
29,
23,
18,
15,
12,
10,
6,
4,
4,
4,
4,
3,
2,
2,
2,
2,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
8388480,
6990166,
5617969,
4484231,
3579000,
2857268,
2281433,
1823821,
1457894,
1165271,
931810,
745645,
596082,
476636,
381373,
305050,
243801,
195172,
155987,
124693,
99663,
79930,
64006,
51184,
40866,
32857,
26359,
21137,
16842,
13429,
10731,
8577,
6857,
5480,
4415,
3536,
2800,
2254,
1808,
1467,
1152,
951,
768,
606,
488,
413,
329,
262,
212,
170,
133,
110,
86,
74,
58,
47,
39,
36,
31,
24,
22,
17,
15,
10,
9,
9,
6,
5,
3,
3,
2,
2,
2,
2,
1,
1,
1,
1,
1,
1,
1,
1,
8388480,
6990382,
5616139,
4482006,
3576568,
2855158,
2282566,
1822971,
1457121,
1165343,
931663,
745066,
594998,
476086,
380639,
304710,
244094,
195445,
156194,
125151,
100033,
80028,
64175,
51440,
41221,
32970,
26478,
21143,
17000,
13527,
10794,
8596,
6874,
5527,
4425,
3554,
2874,
2337,
1874,
1520,
1238,
992,
800,
634,
506,
405,
322,
252,
196,
159,
137,
116,
95,
77,
58,
43,
33,
28,
23,
20,
15,
10,
8,
7,
5,
5,
3,
2,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
8057600,
6715329,
5394931,
4307030,
3438015,
2743822,
2192140,
1751898,
1399448,
1119185,
894874,
715047,
571410,
456995,
365291,
292174,
233708,
187011,
149584,
119395,
95453,
76364,
61109,
48895,
39249,
31283,
25034,
19949,
16019,
12833,
10150,
8130,
6477,
5147,
4034,
3207,
2568,
2050,
1629,
1287,
1008,
797,
632,
522,
439,
343,
279,
239,
201,
161,
130,
106,
84,
64,
56,
48,
36,
28,
24,
21,
14,
8,
6,
6,
5,
5,
5,
3,
3,
2,
1])

active_large=np.array([
50000000,
48602708,
46993160,
45364107,
43737291,
42108407,
40479153,
38854343,
37226918,
35603187,
33978347,
32351038,
30725370,
29098559,
27472120,
25845599,
24221753,
22596969,
20970293,
19343670,
17716664,
16091079,
14465621,
12840542,
11214775,
9589931,
7963823,
6408735,
5123912,
4092551,
3270444,
2614199,
2089776,
1670393,
1334162,
1066595,
852864,
681507,
544801,
436096,
348798,
279035,
223064,
178575,
142811,
114064,
91246,
73131,
58279,
46534,
37174,
29763,
23831,
18976,
15159,
12125,
9658,
7752,
6215,
4985,
4012,
3204,
2572,
2062,
1652,
1304,
1068,
851,
694,
547,
450,
369,
292,
234,
190,
150,
118,
98,
85,
67,
48,
40,
31,
26,
23,
17,
16,
11,
10,
6,
4,
3,
3,
2,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1,
1])


name = 'prelim_speedup_01_k20'	
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx(N,np.divide(cpu_01,gpu_task_128_01),'k-',label='Task 128 t/b')
ax.semilogx(N,np.divide(cpu_01,gpu_task_512_01),'k--',label='Task 512 t/b')
ax.semilogx(N,np.divide(cpu_01,gpu_data_batch_128_01),'b-',label='Event, NonRemap 128 t/b')
ax.semilogx(N,np.divide(cpu_01,gpu_data_batch_512_01),'b--',label='Event, NonRemap 512 t/b')
ax.semilogx(N,np.divide(cpu_01,gpu_data_large_128_01),'r-',label='Event, Remap 128 t/b')
ax.semilogx(N,np.divide(cpu_01,gpu_data_large_512_01),'r--',label='Event, Remap 512 t/b')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=2)
pl.grid(True)
ax.set_title(r'Tesla K20, $\Sigma_a = 0.1$')
ax.set_xlabel(r'Dataset size (histories)')
ax.set_ylabel(r'Speedup over serial CPU')

if plot:
	pl.show()
else:
	print name+'.eps'
	fig.savefig(name+'.eps')

name = 'prelim_speedup_001_k20'	
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx(N,np.divide(cpu_001,gpu_task_128_001),'k-',label='Task 128 t/b')
ax.semilogx(N,np.divide(cpu_001,gpu_task_512_001),'k--',label='Task 512 t/b')
ax.semilogx(N,np.divide(cpu_001,gpu_data_batch_128_001),'b-',label='Event, NonRemap 128 t/b')
ax.semilogx(N,np.divide(cpu_001,gpu_data_batch_512_001),'b--',label='Event, NonRemap 512 t/b')
ax.semilogx(N,np.divide(cpu_001,gpu_data_large_128_001),'r-',label='Event, Remap 128 t/b')
ax.semilogx(N,np.divide(cpu_001,gpu_data_large_512_001),'r--',label='Event, Remap 512 t/b')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=2)
pl.grid(True)
ax.set_title(r'Tesla K20, $\Sigma_a = 0.01$')
ax.set_xlabel(r'Dataset size (histories)')
ax.set_ylabel(r'Speedup over serial CPU')

if plot:
	pl.show()
else:
	print name+'.eps'
	fig.savefig(name+'.eps')

#name = 'prelim_speedup_c2075'	
#fig = pl.figure(figsize=(10,6))
#ax = fig.add_subplot(1,1,1)
#ax.semilogx(N,np.divide(cpu,c2075_gpu_task_128),'k-',label='Task 128 t/b')
#ax.semilogx(N,np.divide(cpu,c2075_gpu_task_512),'k--',label='Task 512 t/b')
#ax.semilogx(N,np.divide(cpu,c2075_gpu_data_batch_128),'b-',label='Event, NonRemap 128 t/b')
#ax.semilogx(N,np.divide(cpu,c2075_gpu_data_batch_512),'b--',label='Event, NonRemap 512 t/b')
#ax.semilogx(N,np.divide(cpu,c2075_gpu_data_large_128),'r-',label='Event, Remap 128 t/b')
#ax.semilogx(N,np.divide(cpu,c2075_gpu_data_large_512),'r--',label='Event, Remap 512 t/b')
#handles, labels = ax.get_legend_handles_labels()
#ax.legend(handles, labels, loc=2)
#pl.grid(True)
#ax.set_title(r'Tesla C2075')
#ax.set_xlabel(r'Dataset size (histories)')
#ax.set_ylabel(r'Speedup over serial CPU')
#
#if plot:
#	pl.show()
#else:
#	print name+'.eps'
#	fig.savefig(name+'.eps')

	
name = 'prelim_active'	
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.plot(active_batch,'b-',label='NonRemap')
ax.plot(np.minimum(active_large,128*65535),'r-',label='Remap')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=1)
pl.grid(True)
ax.set_xlabel(r'Iteration')
ax.set_ylabel(r'Number of histories being transported ')

if plot:
	pl.show()
else:
	print name+'.eps'
	fig.savefig(name+'.eps')

#
#  control divergence
#
name = 'prelim_divergence' 
f=open('divergence2','r')
divergence2=[]
for n in f:
    divergence2.append(float(n))
divergence2=np.array(divergence2)
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.plot(np.absolute(divergence2),'r-',label='Remap')
ax.plot([1,divergence2.__len__()],[np.mean(np.absolute(divergence2)),np.mean(np.absolute(divergence2))],'b-',label='Remap Average')
ax.plot([1,divergence2.__len__()],[79.4581,79.4581],'k-',label='Task')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=1)
pl.grid(True)
ax.set_xlabel(r'Iteration')
ax.set_ylabel(r'\% Control Flow Divergence')
ax.set_ylim([0,100])
ax.set_xlim([0,divergence2.__len__()])

if plot:
    pl.show()
else:
    print name+'.eps'
    fig.savefig(name+'.eps')


#
#  optix test
#
name = 'prelim_optix_G650M' 
N_G650M							= np.array([10000, 30000 ,80000 ,100000 ,300000 ,800000 ,1000000 ,3000000 ,8000000 ,10000000])
f_G650M_interleaved_sbvh_prim 	= open('prelim/timings-optix/G650M_interleaved_sbvh_prim')
f_G650M_interleaved_bvh_prim 	= open('prelim/timings-optix/G650M_interleaved_bvh_prim')
f_G650M_large_sbvh_prim 		= open('prelim/timings-optix/G650M_large_sbvh_prim')
f_G650M_large_bvh_prim 			= open('prelim/timings-optix/G650M_large_bvh_prim')
f_G650M_assembly_sbvh_prim 		= open('prelim/timings-optix/G650M_assembly_sbvh_prim')
f_G650M_assembly_bvh_prim 		= open('prelim/timings-optix/G650M_assembly_bvh_prim')
f_G650M_simple_sbvh_prim 		= open('prelim/timings-optix/G650M_simple_sbvh_prim')
f_G650M_simple_bvh_prim 		= open('prelim/timings-optix/G650M_simple_bvh_prim')
f_G650M_interleaved_sbvh_xfrm 	= open('prelim/timings-optix/G650M_interleaved_sbvh_xfrm')
f_G650M_interleaved_bvh_xfrm 	= open('prelim/timings-optix/G650M_interleaved_bvh_xfrm')
f_G650M_large_sbvh_xfrm			= open('prelim/timings-optix/G650M_large_sbvh_xfrm')
f_G650M_large_bvh_xfrm 			= open('prelim/timings-optix/G650M_large_bvh_xfrm')
f_G650M_assembly_sbvh_xfrm		= open('prelim/timings-optix/G650M_assembly_sbvh_xfrm')
f_G650M_assembly_bvh_xfrm		= open('prelim/timings-optix/G650M_assembly_bvh_xfrm')
f_G650M_simple_sbvh_xfrm		= open('prelim/timings-optix/G650M_simple_sbvh_xfrm')
f_G650M_simple_bvh_xfrm			= open('prelim/timings-optix/G650M_simple_bvh_xfrm')
G650M_interleaved_sbvh_prim 	= np.array(f_G650M_interleaved_sbvh_prim.read().split()	,dtype=float)
G650M_interleaved_bvh_prim 		= np.array(f_G650M_interleaved_bvh_prim.read().split()	,dtype=float)
G650M_large_sbvh_prim 			= np.array(f_G650M_large_sbvh_prim.read().split()		,dtype=float)
G650M_large_bvh_prim 			= np.array(f_G650M_large_bvh_prim.read().split()		,dtype=float)
G650M_assembly_sbvh_prim 		= np.array(f_G650M_assembly_sbvh_prim.read().split()	,dtype=float)
G650M_assembly_bvh_prim 		= np.array(f_G650M_assembly_bvh_prim.read().split()		,dtype=float)
G650M_simple_sbvh_prim 			= np.array(f_G650M_simple_sbvh_prim.read().split()		,dtype=float)
G650M_simple_bvh_prim 			= np.array(f_G650M_simple_bvh_prim.read().split()		,dtype=float)
G650M_interleaved_sbvh_xfrm 	= np.array(f_G650M_interleaved_sbvh_xfrm.read().split()	,dtype=float)
G650M_interleaved_bvh_xfrm		= np.array(f_G650M_interleaved_bvh_xfrm.read().split()	,dtype=float)
G650M_large_sbvh_xfrm			= np.array(f_G650M_large_sbvh_xfrm.read().split()		,dtype=float)
G650M_large_bvh_xfrm 			= np.array(f_G650M_large_bvh_xfrm.read().split()		,dtype=float)
G650M_assembly_sbvh_xfrm		= np.array(f_G650M_assembly_sbvh_xfrm.read().split()	,dtype=float)
G650M_assembly_bvh_xfrm 		= np.array(f_G650M_assembly_bvh_xfrm.read().split()		,dtype=float)
G650M_simple_sbvh_xfrm			= np.array(f_G650M_simple_sbvh_xfrm.read().split()		,dtype=float)
G650M_simple_bvh_xfrm 			= np.array(f_G650M_simple_bvh_xfrm.read().split()		,dtype=float)
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_interleaved_sbvh_prim 		 	),'r-',marker='s',label='Interleaved - Sbvh, prim')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_interleaved_bvh_prim 		 	),'g-',marker='s',label='Interleaved - Bvh,  prim')
ax.semilogx(N_G650M[:7],np.divide(N_G650M[:7],G650M_large_sbvh_prim[:7] 	),'b-',marker='s',label='Large - Sbvh, prim')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_large_bvh_prim 	        		),'c-',marker='s',label='Large - Bvh,  prim')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_assembly_sbvh_prim 				),'m-',marker='s',label='Assembly - Sbvh, prim')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_assembly_bvh_prim 				),'y-',marker='s',label='Assembly - Bvh,  prim')
#ax.semilogx(N_G650M,np.divide(N_G650M,G650M_simple_sbvh_prim 				),'k-',label='Simple - Sbvh, prim')
#ax.semilogx(N_G650M,np.divide(N_G650M,G650M_simple_bvh_prim 				),'-',color=[.5,.5,.5],label='Simple - Bvh,  prim')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_interleaved_sbvh_xfrm 			),'r--',marker='s',label='Interleaved - Sbvh, xfrm')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_interleaved_bvh_xfrm			),'g--',marker='s',label='Interleaved - Bvh,  xfrm')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_large_sbvh_xfrm					),'b--',marker='s',label='Large - Sbvh, xfrm')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_large_bvh_xfrm 					),'c--',marker='s',label='Large - Bvh,  xfrm')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_assembly_sbvh_xfrm				),'m--',marker='s',label='Assembly - Sbvh, xfrm')
ax.semilogx(N_G650M,np.divide(N_G650M,G650M_assembly_bvh_xfrm 				),'y--',marker='s',label='Assembly - Bvh,  xfrm')
#ax.semilogx(N_G650M,np.divide(N_G650M,G650M_simple_sbvh_xfrm				),'k--',label='Simple - Sbvh, xfrm')
#ax.semilogx(N_G650M,np.divide(N_G650M,G650M_simple_bvh_xfrm 				),'--',color=[.5,.5,.5],label='Simple - Bvh,  xfrm')
handles, labels = ax.get_legend_handles_labels()
fontP = FontProperties()
fontP.set_size('small')
ax.legend(handles, labels, prop = fontP, loc=4)
pl.grid(True)
ax.set_title('GeForce GT 650M')
ax.set_xlabel(r'Particles')
ax.set_ylabel(r'Ray Trace Rate (Particles/Second)')
#ax.set_ylim([0,100])
#ax.set_xlim([0,divergence2.__len__()])

if plot:
    pl.show()
else:
    print name+'.eps'
    fig.savefig(name+'.eps')

name = 'prelim_optix_k20' 
N_k20 							= np.array([10000, 30000 ,80000 ,100000 ,300000 ,800000 ,1000000 ,3000000 ,8000000 ,10000000 ,30000000 ,80000000 , 100000000])
f_k20_interleaved_sbvh_prim 	= open('prelim/timings-optix/k20_interleaved_sbvh_prim')
f_k20_interleaved_bvh_prim 		= open('prelim/timings-optix/k20_interleaved_bvh_prim')
f_k20_large_sbvh_prim 			= open('prelim/timings-optix/k20_large_sbvh_prim')
f_k20_large_bvh_prim 			= open('prelim/timings-optix/k20_large_bvh_prim')
f_k20_assembly_sbvh_prim 		= open('prelim/timings-optix/k20_assembly_sbvh_prim')
f_k20_assembly_bvh_prim 		= open('prelim/timings-optix/k20_assembly_bvh_prim')
#f_k20_simple_sbvh_prim 		= open('prelim/timings-optix/k20_simple_sbvh_prim')
#f_k20_simple_bvh_prim 		= open('prelim/timings-optix/k20_simple_bvh_prim')
f_k20_interleaved_sbvh_xfrm 	= open('prelim/timings-optix/k20_interleaved_sbvh_xfrm')
f_k20_interleaved_bvh_xfrm 		= open('prelim/timings-optix/k20_interleaved_bvh_xfrm')
f_k20_large_sbvh_xfrm			= open('prelim/timings-optix/k20_large_sbvh_xfrm')
f_k20_large_bvh_xfrm 			= open('prelim/timings-optix/k20_large_bvh_xfrm')
f_k20_assembly_sbvh_xfrm		= open('prelim/timings-optix/k20_assembly_sbvh_xfrm')
f_k20_assembly_bvh_xfrm			= open('prelim/timings-optix/k20_assembly_bvh_xfrm')
#f_k20_simple_sbvh_xfrm		= open('prelim/timings-optix/k20_simple_sbvh_xfrm')
#f_k20_simple_bvh_xfrm			= open('prelim/timings-optix/k20_simple_bvh_xfrm')
k20_interleaved_sbvh_prim 	= np.array(f_k20_interleaved_sbvh_prim.read().split()	,dtype=float)
k20_interleaved_bvh_prim 		= np.array(f_k20_interleaved_bvh_prim.read().split()	,dtype=float)
k20_large_sbvh_prim 			= np.array(f_k20_large_sbvh_prim.read().split()		,dtype=float)
k20_large_bvh_prim 			= np.array(f_k20_large_bvh_prim.read().split()		,dtype=float)
k20_assembly_sbvh_prim 		= np.array(f_k20_assembly_sbvh_prim.read().split()	,dtype=float)
k20_assembly_bvh_prim 		= np.array(f_k20_assembly_bvh_prim.read().split()		,dtype=float)
#k20_simple_sbvh_prim 			= np.array(f_k20_simple_sbvh_prim.read().split()		,dtype=float)
#k20_simple_bvh_prim 			= np.array(f_k20_simple_bvh_prim.read().split()		,dtype=float)
k20_interleaved_sbvh_xfrm 	= np.array(f_k20_interleaved_sbvh_xfrm.read().split()	,dtype=float)
k20_interleaved_bvh_xfrm		= np.array(f_k20_interleaved_bvh_xfrm.read().split()	,dtype=float)
k20_large_sbvh_xfrm			= np.array(f_k20_large_sbvh_xfrm.read().split()		,dtype=float)
k20_large_bvh_xfrm 			= np.array(f_k20_large_bvh_xfrm.read().split()		,dtype=float)
k20_assembly_sbvh_xfrm		= np.array(f_k20_assembly_sbvh_xfrm.read().split()	,dtype=float)
k20_assembly_bvh_xfrm 		= np.array(f_k20_assembly_bvh_xfrm.read().split()		,dtype=float)
#k20_simple_sbvh_xfrm			= np.array(f_k20_simple_sbvh_xfrm.read().split()		,dtype=float)
#k20_simple_bvh_xfrm 			= np.array(f_k20_simple_bvh_xfrm.read().split()		,dtype=float)
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx(N_k20,np.divide(N_k20,k20_interleaved_sbvh_prim 	),'r-',marker='s',label='Interleaved - Sbvh, prim')
ax.semilogx(N_k20,np.divide(N_k20,k20_interleaved_bvh_prim 		),'g-',marker='s',label='Interleaved - Bvh,  prim')
ax.semilogx(N_k20,np.divide(N_k20,k20_large_sbvh_prim 			),'b-',marker='s',label='Large - Sbvh, prim')
ax.semilogx(N_k20,np.divide(N_k20,k20_large_bvh_prim 			),'c-',marker='s',label='Large - Bvh,  prim')
ax.semilogx(N_k20,np.divide(N_k20,k20_assembly_sbvh_prim 		),'m-',marker='s',label='Assembly - Sbvh, prim')
ax.semilogx(N_k20,np.divide(N_k20,k20_assembly_bvh_prim 		),'y-',marker='s',label='Assembly - Bvh,  prim')
#ax.semilogx(N_k20,np.divide(N_k20,k20_simple_sbvh_prim 		),'k-',label='Simple - Sbvh, prim')
#ax.semilogx(N_k20,np.divide(N_k20,k20_simple_bvh_prim 			),'-',color=[.5,.5,.5],label='Simple - Bvh,  prim')
ax.semilogx(N_k20[0:-1],np.divide(N_k20[0:-1],k20_interleaved_sbvh_xfrm 	),'r--',marker='s',label='Interleaved - Sbvh, xfrm')
ax.semilogx(N_k20[0:-1],np.divide(N_k20[0:-1],k20_interleaved_bvh_xfrm		),'g--',marker='s',label='Interleaved - Bvh,  xfrm')
ax.semilogx(N_k20[0:-1],np.divide(N_k20[0:-1],k20_large_sbvh_xfrm			),'b--',marker='s',label='Large - Sbvh, xfrm')
ax.semilogx(N_k20[0:-1],np.divide(N_k20[0:-1],k20_large_bvh_xfrm 			),'c--',marker='s',label='Large - Bvh,  xfrm')
ax.semilogx(N_k20[0:-1],np.divide(N_k20[0:-1],k20_assembly_sbvh_xfrm		),'m--',marker='s',label='Assembly - Sbvh, xfrm')
ax.semilogx(N_k20[0:-1],np.divide(N_k20[0:-1],k20_assembly_bvh_xfrm 		),'y--',marker='s',label='Assembly - Bvh,  xfrm')
#ax.semilogx(N_k20,np.divide(N_k20,k20_simple_sbvh_xfrm			),'k--',label='Simple - Sbvh, xfrm')
#ax.semilogx(N_k20,np.divide(N_k20,k20_simple_bvh_xfrm 			),'--',color=[.5,.5,.5],label='Simple - Bvh,  xfrm')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, prop = fontP, loc=2)
pl.grid(True)
ax.set_title('Tesla K20')
ax.set_xlabel(r'Particles')
ax.set_ylabel(r'Ray Trace Rate (Particles/Second)')
#ax.set_ylim([0,100])
#ax.set_xlim([0,divergence2.__len__()])

if plot:
    pl.show()
else:
    print name+'.eps'
    fig.savefig(name+'.eps')


name = 'prelim_optix_scaling' 
N_p 			= 1E8
R_o_xfrm 		= N_p / np.array([4.59999084E-01,3.76999664E+00,6.97000122E+00,7.75999451E+00,7.63999939E+00,8.13999939E+00,8.84000397E+00,9.16000366E+00],dtype=float)
R_o_prim 		= N_p / np.array([2.60002136E-01,2.31999969E+00,3.63000488E+00,4.44000244E+00,4.40000153E+00,4.95999908E+00,6.09000397E+00,6.40000153E+00,6.50000000E+00,6.15000153E+00],dtype=float)
N_p 			= 1E6
R_o_xfrm_small 	= N_p / np.array([1.00002289E-02,5.00001907E-02,6.99996948E-02,9.00001526E-02,9.00001526E-02,1.00000381E-01,1.09999657E-01,1.20000839E-01,2.09999084E-01,5.00000000E-01],dtype=float)
R_o_prim_small 	= N_p / np.array([1.00002289E-02,2.99997330E-02,3.99999619E-02,5.00001907E-02,3.99999619E-02,3.99999619E-02,6.00004196E-02,7.00001717E-02,6.99996948E-02,5.99994659E-02],dtype=float)
N_o = np.array([1,2,3,9,21,129, 633 ,2613 ,10623,42843],dtype=float)
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.loglog(N_o,R_o_prim,'b-',label=r'BVH, $10^8$, Prim')
ax.loglog(N_o[:8],R_o_xfrm,'r-',label=r'BVH, $10^8$, Xfrm')
ax.loglog(N_o,R_o_prim_small,'b--',label=r'BVH, $10^6$, Prim')
ax.loglog(N_o,R_o_xfrm_small,'r--',label=r'BVH, $10^6$, Xfrm')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=1)
pl.grid(True)
ax.set_title('Tesla K20')
ax.set_xlabel(r'Number of Objects')
ax.set_ylabel(r'Ray Trace Rate (Particles/Second)')

if plot:
    pl.show()
else:
    print name+'.eps'
    fig.savefig(name+'.eps')

