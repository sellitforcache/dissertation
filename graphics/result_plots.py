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

N=[1e2,1e3,1e4,1e5,1e6,1e7,2e7,3e7,5e7,9e7]

cpu=[np.mean([0.000296,0.000249]),
     np.mean([0.002485,0.002431]),
     np.mean([0.024242,0.024404]),
     np.mean([0.242053,0.243017]),
     np.mean([2.421229,2.408955]),
     np.mean([24.059603,24.210554]),
     np.mean([48.281131,48.479846]),
     np.mean([72.289331,72.674503]),
     np.mean([120.620987,120.744410 ]),
     np.mean([218.651450,217.087858 ])]

gpu_task_128=[  np.mean([0.000632,0.000598,0.000696 ]),
                np.mean([0.000900,0.001018,0.000701 ]),
                np.mean([0.001686,0.001526,0.001646 ]),
                np.mean([0.009362,0.009155,0.009156 ]),
                np.mean([0.085693,0.085703,0.085670 ]),
                np.mean([0.851322,0.851531,0.852025 ]),
                np.mean([1.703503,1.703256,1.702110 ]),
                np.mean([2.554006,2.553515,2.552910 ]),
                np.mean([4.255345,4.255233 ]),
                np.mean([7.663975 ]),]

gpu_task_512=[  np.mean([0.000960 ]),
                np.mean([0.000907 ]),
                np.mean([0.002097 ]),
                np.mean([0.013404 ]),
                np.mean([0.130678 ]),
                np.mean([1.301773 ]),
                np.mean([2.599201 ]),
                np.mean([3.897249 ]),
                np.mean([6.502696 ]),
                np.mean([11.699717 ]),]

gpu_data_remap_128=[    np.mean([0.019172 ]),
                        np.mean([0.003512 ]),
                        np.mean([0.007006 ]),
                        np.mean([0.019632 ]),
                        np.mean([0.132473 ]),
                        np.mean([1.943982 ]),
                        np.mean([5.011398 ]),
                        np.mean([7.955287 ]),
                        np.mean([13.896977 ]),
                        np.mean([24.734211 ]),]

            
gpu_data_batch_128=[    np.mean([0.001787,0.001751 ]),
                        np.mean([0.002582 ]),
                        np.mean([0.004709 ]),
                        np.mean([0.018582 ]),
                        np.mean([0.156778 ]),
                        np.mean([2.027734 ]),
                        np.mean([5.273526 ]),
                        np.mean([8.496894 ]),
                        np.mean([15.025722 ]),
                        np.mean([ ]),]

gpu_data_batch_512=[    np.mean([0.001305 ]),
                        np.mean([0.002899 ]),
                        np.mean([0.004187 ]),
                        np.mean([0.022578 ]),
                        np.mean([0.194196 ]),
                        np.mean([1.946018 ]),
                        np.mean([3.944908 ]),
                        np.mean([5.819015 ]),
                        np.mean([14.426105 ]),
                        np.mean([ ]),]
            

gpu_data_large_128=[  np.mean([0.001745 ]),
                np.mean([0.004338 ]),
                np.mean([0.005246 ]),
                np.mean([0.017606 ]),
                np.mean([0.123069 ]),
                np.mean([1.287993 ]),
                np.mean([2.474710 ]),
                np.mean([3.807573 ]),
                np.mean([6.358311 ]),
                np.mean([ ]),]

gpu_data_large_512=[    np.mean([0.001764 ]),
                        np.mean([0.002900 ]),
                        np.mean([0.005836 ]),
                        np.mean([0.016890 ]),
                        np.mean([0.127925 ]),
                        np.mean([1.262911 ]),
                        np.mean([2.652309 ]),
                        np.mean([4.002110 ]),
                        np.mean([6.548943 ]),
                        np.mean([ ]),]
active_batch=[]
active_batch[1]=8388480
active_batch[2]=6989971
active_batch[3]=5616003
active_batch[4]=4483418
active_batch[5]=3577907
active_batch[6]=2856565
active_batch[7]=2281521
active_batch[8]=1821622
active_batch[9]=1455824
active_batch[10]=1163384
active_batch[11]=929883
active_batch[12]=743982
active_batch[13]=595361
active_batch[14]=476282
active_batch[15]=381024
active_batch[16]=304976
active_batch[17]=243805
active_batch[18]=195044
active_batch[19]=156180
active_batch[20]=124679
active_batch[21]=99536
active_batch[22]=79573
active_batch[23]=63892
active_batch[24]=51060
active_batch[25]=40712
active_batch[26]=32552
active_batch[27]=26087
active_batch[28]=20909
active_batch[29]=16760
active_batch[30]=13317
active_batch[31]=10678
active_batch[32]=8504
active_batch[33]=6803
active_batch[34]=5475
active_batch[35]=4384
active_batch[36]=3540
active_batch[37]=2815
active_batch[38]=2260
active_batch[39]=1779
active_batch[40]=1416
active_batch[41]=1111
active_batch[42]=908
active_batch[43]=725
active_batch[44]=594
active_batch[45]=483
active_batch[46]=382
active_batch[47]=307
active_batch[48]=241
active_batch[49]=190
active_batch[50]=145
active_batch[51]=127
active_batch[52]=108
active_batch[53]=91
active_batch[54]=78
active_batch[55]=59
active_batch[56]=49
active_batch[57]=43
active_batch[58]=33
active_batch[59]=25
active_batch[60]=18
active_batch[61]=11
active_batch[62]=9
active_batch[63]=8
active_batch[64]=7
active_batch[65]=6
active_batch[66]=6
active_batch[67]=6
active_batch[68]=6
active_batch[69]=6
active_batch[70]=4
active_batch[71]=2
active_batch[72]=1
active_batch[73]=1
active_batch[74]=1
active_batch[75]=1
active_batch[76]=1
active_batch[77]=8388480
active_batch[78]=6991352
active_batch[79]=5616131
active_batch[80]=4482690
active_batch[81]=3577697
active_batch[82]=2855706
active_batch[83]=2279989
active_batch[84]=1822024
active_batch[85]=1455179
active_batch[86]=1163638
active_batch[87]=930330
active_batch[88]=744378
active_batch[89]=595559
active_batch[90]=476119
active_batch[91]=380097
active_batch[92]=304183
active_batch[93]=243172
active_batch[94]=194322
active_batch[95]=155462
active_batch[96]=124360
active_batch[97]=99635
active_batch[98]=79876
active_batch[99]=63655
active_batch[100]=50934
active_batch[101]=40710
active_batch[102]=32483
active_batch[103]=25926
active_batch[104]=20750
active_batch[105]=16651
active_batch[106]=13334
active_batch[107]=10681
active_batch[108]=8556
active_batch[109]=6847
active_batch[110]=5492
active_batch[111]=4385
active_batch[112]=3525
active_batch[113]=2783
active_batch[114]=2206
active_batch[115]=1781
active_batch[116]=1428
active_batch[117]=1148
active_batch[118]=931
active_batch[119]=753
active_batch[120]=613
active_batch[121]=476
active_batch[122]=392
active_batch[123]=317
active_batch[124]=254
active_batch[125]=214
active_batch[126]=174
active_batch[127]=149
active_batch[128]=122
active_batch[129]=101
active_batch[130]=79
active_batch[131]=70
active_batch[132]=56
active_batch[133]=48
active_batch[134]=39
active_batch[135]=32
active_batch[136]=22
active_batch[137]=19
active_batch[138]=14
active_batch[139]=14
active_batch[140]=13
active_batch[141]=10
active_batch[142]=10
active_batch[143]=9
active_batch[144]=8
active_batch[145]=7
active_batch[146]=6
active_batch[147]=5
active_batch[148]=5
active_batch[149]=5
active_batch[150]=4
active_batch[151]=4
active_batch[152]=3
active_batch[153]=3
active_batch[154]=3
active_batch[155]=2
active_batch[156]=2
active_batch[157]=1
active_batch[158]=1
active_batch[159]=1
active_batch[160]=1
active_batch[161]=1
active_batch[162]=1
active_batch[163]=1
active_batch[164]=1
active_batch[165]=1
active_batch[166]=1
active_batch[167]=1
active_batch[168]=8388480
active_batch[169]=6991725
active_batch[170]=5618433
active_batch[171]=4484376
active_batch[172]=3578925
active_batch[173]=2856971
active_batch[174]=2281724
active_batch[175]=1824029
active_batch[176]=1457633
active_batch[177]=1165693
active_batch[178]=931667
active_batch[179]=745095
active_batch[180]=595849
active_batch[181]=476399
active_batch[182]=380926
active_batch[183]=304656
active_batch[184]=244072
active_batch[185]=195028
active_batch[186]=156008
active_batch[187]=124667
active_batch[188]=99498
active_batch[189]=79595
active_batch[190]=63700
active_batch[191]=50947
active_batch[192]=40593
active_batch[193]=32502
active_batch[194]=25914
active_batch[195]=20733
active_batch[196]=16616
active_batch[197]=13344
active_batch[198]=10698
active_batch[199]=8627
active_batch[200]=6891
active_batch[201]=5579
active_batch[202]=4454
active_batch[203]=3537
active_batch[204]=2846
active_batch[205]=2287
active_batch[206]=1844
active_batch[207]=1489
active_batch[208]=1176
active_batch[209]=929
active_batch[210]=736
active_batch[211]=600
active_batch[212]=484
active_batch[213]=377
active_batch[214]=304
active_batch[215]=248
active_batch[216]=193
active_batch[217]=158
active_batch[218]=128
active_batch[219]=110
active_batch[220]=87
active_batch[221]=72
active_batch[222]=63
active_batch[223]=53
active_batch[224]=39
active_batch[225]=29
active_batch[226]=23
active_batch[227]=18
active_batch[228]=15
active_batch[229]=12
active_batch[230]=10
active_batch[231]=6
active_batch[232]=4
active_batch[233]=4
active_batch[234]=4
active_batch[235]=4
active_batch[236]=3
active_batch[237]=2
active_batch[238]=2
active_batch[239]=2
active_batch[240]=2
active_batch[241]=1
active_batch[242]=1
active_batch[243]=1
active_batch[244]=1
active_batch[245]=1
active_batch[246]=1
active_batch[247]=1
active_batch[248]=1
active_batch[249]=1
active_batch[250]=1
active_batch[251]=1
active_batch[252]=1
active_batch[253]=1
active_batch[254]=1
active_batch[255]=1
active_batch[256]=1
active_batch[257]=1
active_batch[258]=8388480
active_batch[259]=6990166
active_batch[260]=5617969
active_batch[261]=4484231
active_batch[262]=3579000
active_batch[263]=2857268
active_batch[264]=2281433
active_batch[265]=1823821
active_batch[266]=1457894
active_batch[267]=1165271
active_batch[268]=931810
active_batch[269]=745645
active_batch[270]=596082
active_batch[271]=476636
active_batch[272]=381373
active_batch[273]=305050
active_batch[274]=243801
active_batch[275]=195172
active_batch[276]=155987
active_batch[277]=124693
active_batch[278]=99663
active_batch[279]=79930
active_batch[280]=64006
active_batch[281]=51184
active_batch[282]=40866
active_batch[283]=32857
active_batch[284]=26359
active_batch[285]=21137
active_batch[286]=16842
active_batch[287]=13429
active_batch[288]=10731
active_batch[289]=8577
active_batch[290]=6857
active_batch[291]=5480
active_batch[292]=4415
active_batch[293]=3536
active_batch[294]=2800
active_batch[295]=2254
active_batch[296]=1808
active_batch[297]=1467
active_batch[298]=1152
active_batch[299]=951
active_batch[300]=768
active_batch[301]=606
active_batch[302]=488
active_batch[303]=413
active_batch[304]=329
active_batch[305]=262
active_batch[306]=212
active_batch[307]=170
active_batch[308]=133
active_batch[309]=110
active_batch[310]=86
active_batch[311]=74
active_batch[312]=58
active_batch[313]=47
active_batch[314]=39
active_batch[315]=36
active_batch[316]=31
active_batch[317]=24
active_batch[318]=22
active_batch[319]=17
active_batch[320]=15
active_batch[321]=10
active_batch[322]=9
active_batch[323]=9
active_batch[324]=6
active_batch[325]=5
active_batch[326]=3
active_batch[327]=3
active_batch[328]=2
active_batch[329]=2
active_batch[330]=2
active_batch[331]=2
active_batch[332]=1
active_batch[333]=1
active_batch[334]=1
active_batch[335]=1
active_batch[336]=1
active_batch[337]=1
active_batch[338]=1
active_batch[339]=1
active_batch[340]=8388480
active_batch[341]=6990382
active_batch[342]=5616139
active_batch[343]=4482006
active_batch[344]=3576568
active_batch[345]=2855158
active_batch[346]=2282566
active_batch[347]=1822971
active_batch[348]=1457121
active_batch[349]=1165343
active_batch[350]=931663
active_batch[351]=745066
active_batch[352]=594998
active_batch[353]=476086
active_batch[354]=380639
active_batch[355]=304710
active_batch[356]=244094
active_batch[357]=195445
active_batch[358]=156194
active_batch[359]=125151
active_batch[360]=100033
active_batch[361]=80028
active_batch[362]=64175
active_batch[363]=51440
active_batch[364]=41221
active_batch[365]=32970
active_batch[366]=26478
active_batch[367]=21143
active_batch[368]=17000
active_batch[369]=13527
active_batch[370]=10794
active_batch[371]=8596
active_batch[372]=6874
active_batch[373]=5527
active_batch[374]=4425
active_batch[375]=3554
active_batch[376]=2874
active_batch[377]=2337
active_batch[378]=1874
active_batch[379]=1520
active_batch[380]=1238
active_batch[381]=992
active_batch[382]=800
active_batch[383]=634
active_batch[384]=506
active_batch[385]=405
active_batch[386]=322
active_batch[387]=252
active_batch[388]=196
active_batch[389]=159
active_batch[390]=137
active_batch[391]=116
active_batch[392]=95
active_batch[393]=77
active_batch[394]=58
active_batch[395]=43
active_batch[396]=33
active_batch[397]=28
active_batch[398]=23
active_batch[399]=20
active_batch[400]=15
active_batch[401]=10
active_batch[402]=8
active_batch[403]=7
active_batch[404]=5
active_batch[405]=5
active_batch[406]=3
active_batch[407]=2
active_batch[408]=1
active_batch[409]=1
active_batch[410]=1
active_batch[411]=1
active_batch[412]=1
active_batch[413]=1
active_batch[414]=1
active_batch[415]=1
active_batch[416]=1
active_batch[417]=1
active_batch[418]=8057600
active_batch[419]=6715329
active_batch[420]=5394931
active_batch[421]=4307030
active_batch[422]=3438015
active_batch[423]=2743822
active_batch[424]=2192140
active_batch[425]=1751898
active_batch[426]=1399448
active_batch[427]=1119185
active_batch[428]=894874
active_batch[429]=715047
active_batch[430]=571410
active_batch[431]=456995
active_batch[432]=365291
active_batch[433]=292174
active_batch[434]=233708
active_batch[435]=187011
active_batch[436]=149584
active_batch[437]=119395
active_batch[438]=95453
active_batch[439]=76364
active_batch[440]=61109
active_batch[441]=48895
active_batch[442]=39249
active_batch[443]=31283
active_batch[444]=25034
active_batch[445]=19949
active_batch[446]=16019
active_batch[447]=12833
active_batch[448]=10150
active_batch[449]=8130
active_batch[450]=6477
active_batch[451]=5147
active_batch[452]=4034
active_batch[453]=3207
active_batch[454]=2568
active_batch[455]=2050
active_batch[456]=1629
active_batch[457]=1287
active_batch[458]=1008
active_batch[459]=797
active_batch[460]=632
active_batch[461]=522
active_batch[462]=439
active_batch[463]=343
active_batch[464]=279
active_batch[465]=239
active_batch[466]=201
active_batch[467]=161
active_batch[468]=130
active_batch[469]=106
active_batch[470]=84
active_batch[471]=64
active_batch[472]=56
active_batch[473]=48
active_batch[474]=36
active_batch[475]=28
active_batch[476]=24
active_batch[477]=21
active_batch[478]=14
active_batch[479]=8
active_batch[480]=6
active_batch[481]=6
active_batch[482]=5
active_batch[483]=5
active_batch[484]=5
active_batch[485]=3
active_batch[486]=3
active_batch[487]=2
active_batch[488]=1

active_large=[]
active_large[1]=50000000
active_large[2]=48602708
active_large[3]=46993160
active_large[4]=45364107
active_large[5]=43737291
active_large[6]=42108407
active_large[7]=40479153
active_large[8]=38854343
active_large[9]=37226918
active_large[10]=35603187
active_large[11]=33978347
active_large[12]=32351038
active_large[13]=30725370
active_large[14]=29098559
active_large[15]=27472120
active_large[16]=25845599
active_large[17]=24221753
active_large[18]=22596969
active_large[19]=20970293
active_large[20]=19343670
active_large[21]=17716664
active_large[22]=16091079
active_large[23]=14465621
active_large[24]=12840542
active_large[25]=11214775
active_large[26]=9589931
active_large[27]=7963823
active_large[28]=6408735
active_large[29]=5123912
active_large[30]=4092551
active_large[31]=3270444
active_large[32]=2614199
active_large[33]=2089776
active_large[34]=1670393
active_large[35]=1334162
active_large[36]=1066595
active_large[37]=852864
active_large[38]=681507
active_large[39]=544801
active_large[40]=436096
active_large[41]=348798
active_large[42]=279035
active_large[43]=223064
active_large[44]=178575
active_large[45]=142811
active_large[46]=114064
active_large[47]=91246
active_large[48]=73131
active_large[49]=58279
active_large[50]=46534
active_large[51]=37174
active_large[52]=29763
active_large[53]=23831
active_large[54]=18976
active_large[55]=15159
active_large[56]=12125
active_large[57]=9658
active_large[58]=7752
active_large[59]=6215
active_large[60]=4985
active_large[61]=4012
active_large[62]=3204
active_large[63]=2572
active_large[64]=2062
active_large[65]=1652
active_large[66]=1304
active_large[67]=1068
active_large[68]=851
active_large[69]=694
active_large[70]=547
active_large[71]=450
active_large[72]=369
active_large[73]=292
active_large[74]=234
active_large[75]=190
active_large[76]=150
active_large[77]=118
active_large[78]=98
active_large[79]=85
active_large[80]=67
active_large[81]=48
active_large[82]=40
active_large[83]=31
active_large[84]=26
active_large[85]=23
active_large[86]=17
active_large[87]=16
active_large[88]=11
active_large[89]=10
active_large[90]=6
active_large[91]=4
active_large[92]=3
active_large[93]=3
active_large[94]=2
active_large[95]=1
active_large[96]=1
active_large[97]=1
active_large[98]=1
active_large[99]=1
active_large[100]=1
active_large[101]=1
active_large[102]=1
active_large[103]=1
active_large[104]=1
active_large[105]=1
active_large[106]=1
active_large[107]=1
active_large[108]=1
active_large[109]=1
active_large[110]=1
active_large[111]=1
active_large[112]=1


name = 'prelim_speedup'	
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.plot(N,gpu_task_128/cpu,color=[1, 0, 0],label='')
ax.plot(N,gpu_task_512/cpu,color=[1, 0, 0],label='')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=3)
ax.set_xlabel(r'Dataset size (histories)')
ax.set_ylabel(r'Speedup over serial CPU')

if plot:
	pl.show()
else:
	print name+'.eps'
	fig.savefig(name+'.eps')
	
name = 'prelim_batches'	
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
