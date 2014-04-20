#! /usr/bin/python
import sys
import os
import re
from matplotlib.colors import LogNorm
import matplotlib.gridspec as gridspec
import matplotlib.colorbar as cbar
import matplotlib.pyplot as plt 

from termcolor import colored
from pyne import ace
import numpy as np
import numpy
import pylab as pl


#
#  smoothing function form scipy cookbook
#
def smooth(x,window_len=11,window='hanning'):
	if x.ndim != 1:
		raise ValueError, "smooth only accepts 1 dimension arrays."
	if x.size < window_len:
		raise ValueError, "Input vector needs to be bigger than window size."
	if window_len<3:
		return x
	if not window in ['flat', 'hanning', 'hamming', 'bartlett', 'blackman']:
		raise ValueError, "Window is on of 'flat', 'hanning', 'hamming', 'bartlett', 'blackman'"
	s=np.r_[x[window_len-1:0:-1],x,x[-1:-window_len:-1]]
	if window == 'flat': #moving average
		w=np.ones(window_len,'d')
	else:
		w=eval('numpy.'+window+'(window_len)')
	y=np.convolve(w/w.sum(),s,mode='valid')
	return y

#
#  loading routines
#
def get_serpent_det(filepath):
	fobj    = open(filepath)
	fstr    = fobj.read()
	names   = re.findall('[a-zA-Z]+ *= *\[',fstr)
	data    = re.findall('\[ *\n[\w\s+-.]+\];',fstr)
	alldata = dict()
	dex     = 0
	for name in names:
		varname  = name.split()[0]
		moredata = re.findall(' [ .+-eE0-9^\[]+\n',data[dex])
		thisarray = numpy.array(moredata[0].split(),dtype=float)
		for line in moredata[1:]:
			thisarray=numpy.vstack((thisarray,numpy.array(line.split(),dtype=float)))
		alldata[varname]=numpy.mat(thisarray)
		dex = dex + 1
	return alldata

def get_mcnp_mctal(filepath):
	fobj    = open(filepath)
	fstr    = fobj.read()
	ene 	= re.findall('et +[0-9.E\+\- \n]+',fstr)
	ene 	= ene[0].split()
	ene 	= numpy.array(ene[2:],dtype=float)
	vals    = re.findall('vals *[0-9.E\+\- \n]+',fstr)
	vals 	= vals[0].split()
	vals 	= numpy.array(vals[1:],dtype=float)
	errs 	= vals[1::2]
	vals 	= vals[0::2]
	alldata = numpy.array([ene,vals,errs])
	return alldata


#
#  Get input arguments
#
arglen = len(sys.argv)
if arglen==2 and sys.argv[1] == 'plot':
	plot=1
	case=''
if arglen==2 and sys.argv[1] != 'plot':
	plot=0
	case=sys.argv[1]
elif arglen==3 and sys.argv[1] == 'plot':
	plot=1
	case=sys.argv[2]

if case=='':
	reso=256
else:
	reso=512

#
#  set latex and font
#  !!!! THIS BREAKS THE PLOTS BUT THEY RENDER BEAUTIFULLY IN THE .eps FILE !!!!
if plot:
	print colored(' --- Plotting without LaTeX, NO FILES WRITTEN','red')
else:
	print colored(' --- Rendering .eps files with LaTeX enabled','green')
	pl.rc('text', usetex=True)
	pl.rc('font', family='serif')



#
#  homogenized
#
tally      = numpy.loadtxt('gpu-benchmark'+case+'/homfuel.tally')
tallybins  = numpy.loadtxt('gpu-benchmark'+case+'/homfuel.tallybins')
serpdata   = get_serpent_det('serpent-benchmark'+case+'/homfuel_det0.m')
mcnpdata   = get_mcnp_mctal('mcnp-benchmark'+case+'/homfuel.tally')
mcnp_vol = 2000*2000*2000
#title = 'WARP 6e6 histories (2e6 discarded)\n Flux in homogenized block of UO2 and water'	

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths*mcnp_vol)
newflux=numpy.multiply(newflux,avg)

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
#mcnp_newflux = mcnp_newflux #* mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])/mcnp_vol
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))

fig = pl.figure(figsize=(10,6))
gs = gridspec.GridSpec(2, 1, height_ratios=[6, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])
ax0.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.18')
ax0.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax0.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
#ax0.set_xlabel('Energy (MeV)')
ax0.set_ylabel(r'Flux/Lethargy per Fission Neutron (n/cm$^2$-s)')
#ax0.set_title(title)
handles, labels = ax0.get_legend_handles_labels()
ax0.legend(handles,labels,loc=2)
ax0.set_xlim([1e-11,20])
ax0.grid(True)
ax1.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax1.set_xlabel('Energy (MeV)')
ax1.set_ylabel('Relative Error \n vs. Serpent')
ax1.set_xlim([1e-11,20])
ax1.set_ylim([-5e-2,5e-2])
ax1.grid(True)

if plot:
	pl.show()
else:
	print 'homfuel_spec'+case+'.eps'
	fig.savefig('homfuel_spec'+case+'.eps')

fig = pl.figure(figsize=(18,6))
gs = gridspec.GridSpec(1, 2, width_ratios=[1, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])

xmin = ymin = -1000
xmax = ymax =  1000
data=np.array(open("gpu-benchmark"+case+"/homfuel.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
ax0.hist2d(data[:,0], data[:,1], range=[[xmin, xmax], [ymin, ymax]], bins=reso , normed=True)#norm=LogNorm())
ax0.set_xlabel('x (cm)')
ax0.set_ylabel('y (cm)')
ax0.grid('on',color='k')

xmin = -1000
xmax =  1000
ymin = -1000
ymax =  1000
ax1.hist2d(data[:,0], data[:,2], range=[[xmin, xmax], [ymin, ymax]], bins=reso , normed=True)#norm=LogNorm())
ax1.set_xlabel('x (cm)')
ax1.set_ylabel('z (cm)')
ax1.grid('on',color='k')
ax1.yaxis.tick_right()
cbar_ax = cbar.make_axes(fig.get_axes())
fig.colorbar(ax1.get_images()[0], cax=cbar_ax[0])

if plot:
	pl.show()
else:
	print 'homfuel_fiss'+case+'.eps'
	fig.savefig('homfuel_fiss'+case+'.eps')






#
#  pincell
#
tally      = numpy.loadtxt('gpu-benchmark'+case+'/pincell.tally')
tallybins  = numpy.loadtxt('gpu-benchmark'+case+'/pincell.tallybins')
serpdata   = get_serpent_det('serpent-benchmark'+case+'/pincell_det0.m')
mcnpdata   = get_mcnp_mctal('mcnp-benchmark'+case+'/pincell.tally')
mcnp_vol = 125.663706144
title='Serpent2 (Serial) vs. WARP 6e6 histories (2e6 discarded)\n Flux in the water of surrpunding a single UO2 pin'

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths*mcnp_vol)
newflux=numpy.multiply(newflux,avg)

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
#mcnp_newflux = mcnp_newflux * mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])/mcnp_vol
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))

fig = pl.figure(figsize=(10,6))
gs = gridspec.GridSpec(2, 1, height_ratios=[6, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])
ax0.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.18')
ax0.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax0.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
#ax0.set_xlabel('Energy (MeV)')
ax0.set_ylabel(r'Flux/Lethargy per Fission Neutron (n/cm$^2$-s)')
#ax0.set_title(title)
handles, labels = ax0.get_legend_handles_labels()
ax0.legend(handles,labels,loc=2)
ax0.set_xlim([1e-11,20])
ax0.grid(True)
ax1.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax1.set_xlabel('Energy (MeV)')
ax1.set_ylabel('Relative Error \n vs. Serpent')
ax1.set_xlim([1e-11,20])
ax1.set_ylim([-5e-2,5e-2])
ax1.grid(True)

if plot:
	pl.show()
else:
	print 'pincell_spec'+case+'.eps'
	fig.savefig('pincell_spec'+case+'.eps')


fig = pl.figure(figsize=(10,6))
gs = gridspec.GridSpec(1, 2, width_ratios=[8, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])

xmin = ymin = -2
xmax = ymax =  2
data=np.array(open("gpu-benchmark"+case+"/pincell.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
ax0.hist2d(data[:,0], data[:,1], range=[[xmin, xmax], [ymin, ymax]], bins=reso)# , normed=True)#norm=LogNorm())
ax0.set_xlabel('x (cm)')
ax0.set_ylabel('y (cm)')
ax0.grid('on',color='k')

xmin = -4	
xmax =  4	
ymin = -21
ymax =  21
ax1.hist2d(data[:,0], data[:,2], range=[[xmin, xmax], [ymin, ymax]], bins=reso )#, normed=True)#, norm=LogNorm())
ax1.set_xlabel('x (cm)')
ax1.set_ylabel('z (cm)')
ax1.grid('on',color='k')
ax1.set_xticks([xmin,0,xmax])
ax1.yaxis.tick_right()
cbar_ax = cbar.make_axes(fig.get_axes())
fig.colorbar(ax1.get_images()[0], cax=cbar_ax[0])

if plot:
	pl.show()
else:
	print 'pincell_fiss'+case+'.eps'
	fig.savefig('pincell_fiss'+case+'.eps')


#
#  godiva
#
tally      = numpy.loadtxt('gpu-benchmark'+case+'/godiva.tally')
tallybins  = numpy.loadtxt('gpu-benchmark'+case+'/godiva.tallybins')
serpdata   = get_serpent_det('serpent-benchmark'+case+'/godiva_det0.m')
mcnpdata   = get_mcnp_mctal('mcnp-benchmark'+case+'/godiva.tally')
mcnp_vol = 555.647209455
title = 'Serpent2 (Serial) vs. WARP 6e6 histories (2e6 discarded)\n Flux in a bare Pu-239 sphere (Godiva)'

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths*mcnp_vol)
newflux=numpy.multiply(newflux,avg)

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
#cnp_newflux = mcnp_newflux * mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])/mcnp_vol
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))

fig = pl.figure(figsize=(10,6))
gs = gridspec.GridSpec(2, 1, height_ratios=[6, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])
ax0.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.18')
ax0.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax0.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
#ax0.set_xlabel('Energy (MeV)')
ax0.set_ylabel(r'Flux/Lethargy per Fission Neutron (n/cm$^2$-s)')
#ax0.set_title(title)
handles, labels = ax0.get_legend_handles_labels()
ax0.legend(handles,labels,loc=2)
ax0.set_xlim([1e-11,20])
ax0.grid(True)
ax1.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax1.set_xlabel('Energy (MeV)')
ax1.set_ylabel('Relative Error \n vs. Serpent')
ax1.set_xlim([1e-11,20])
ax1.set_ylim([-5e-2,5e-2])
ax1.grid(True)

if plot:
	pl.show()
else:
	print 'godiva_spec'+case+'.eps'
	fig.savefig('godiva_spec'+case+'.eps')


fig = pl.figure(figsize=(18,6))
gs = gridspec.GridSpec(1, 2, width_ratios=[1, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])

xmin = ymin = -7
xmax = ymax =  7
data=np.array(open("gpu-benchmark"+case+"/godiva.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
ax0.hist2d(data[:,0], data[:,1], range=[[xmin, xmax], [ymin, ymax]], bins=reso , normed=True)#norm=LogNorm())
ax0.set_xlabel('x (cm)')
ax0.set_ylabel('y (cm)')
ax0.grid('on',color='k')

xmin = -7
xmax =  7
ymin = -7
ymax =  7
ax1.hist2d(data[:,0], data[:,2], range=[[xmin, xmax], [ymin, ymax]], bins=reso , normed=True)#norm=LogNorm())
ax1.set_xlabel('x (cm)')
ax1.set_ylabel('z (cm)')
ax1.grid('on',color='k')
ax1.yaxis.tick_right()
cbar_ax = cbar.make_axes(fig.get_axes())
fig.colorbar(ax1.get_images()[0], cax=cbar_ax[0])

if plot:
	pl.show()
else:
	print 'godiva_fiss'+case+'.eps'
	fig.savefig('godiva_fiss'+case+'.eps')



#
#  assembly
#
tally      = numpy.loadtxt('gpu-benchmark'+case+'/assembly.tally')
tallybins  = numpy.loadtxt('gpu-benchmark'+case+'/assembly.tallybins')
serpdata   = get_serpent_det('serpent-benchmark'+case+'/assembly_det0.m')
mcnpdata   = get_mcnp_mctal('mcnp-benchmark'+case+'/assembly.tally')
mcnp_vol = 125.663706144
title = 'Serpent2 (Serial) vs. WARP 6e6 histories (2e6 discarded)\n Flux in the water of a hexagonal array of UO2 pins'

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths*mcnp_vol)
newflux=numpy.multiply(newflux,avg)

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
#mcnp_newflux = mcnp_newflux * mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])/mcnp_vol
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))

fig = pl.figure(figsize=(10,6))
gs = gridspec.GridSpec(2, 1, height_ratios=[6, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])
ax0.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.18')
ax0.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax0.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
#ax0.set_xlabel('Energy (MeV)')
ax0.set_ylabel(r'Flux/Lethargy per Fission Neutron (n/cm$^2$-s)')
#ax0.set_title(title)
handles, labels = ax0.get_legend_handles_labels()
ax0.legend(handles,labels,loc=2)
ax0.set_xlim([1e-11,20])
ax0.grid(True)
ax1.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax1.set_xlabel('Energy (MeV)')
ax1.set_ylabel('Relative Error \n vs. Serpent')
ax1.set_xlim([1e-11,20])
ax1.set_ylim([-3e-1,3e-1])
ax1.grid(True)

if plot:
	pl.show()
else:
	print 'assembly_spec'+case+'.eps'
	fig.savefig('assembly_spec'+case+'.eps')


fig = pl.figure(figsize=(18,6))
gs = gridspec.GridSpec(1, 2, width_ratios=[1, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])

xmin = -40
xmax =  40
ymin = -40
ymax =  40
data=np.array(open("gpu-benchmark"+case+"/assembly.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
ax0.hist2d(data[:,0], data[:,1], range=[[xmin, xmax], [ymin, ymax]], bins=reso , normed=True)#norm=LogNorm())
ax0.set_xlabel('x (cm)')
ax0.set_ylabel('y (cm)')
ax0.grid('on',color='k')

xmin = -40
xmax =  40
ymin = -40
ymax =  40
ax1.hist2d(data[:,0], data[:,2], range=[[xmin, xmax], [ymin, ymax]], bins=reso , normed=True)#norm=LogNorm())
ax1.set_xlabel('x (cm)')
ax1.set_ylabel('z (cm)')
ax1.grid('on',color='k')
ax1.yaxis.tick_right()
cbar_ax = cbar.make_axes(fig.get_axes())
fig.colorbar(ax1.get_images()[0], cax=cbar_ax[0])

if plot:
	pl.show()
else:
	print 'assembly_fiss'+case+'.eps'
	fig.savefig('assembly_fiss'+case+'.eps')


#
#
#  fixed source, u235 w 1ev point source 20cm cube
#
#
tally      = numpy.loadtxt(  'fixed-benchmark/fixed_1ev_u235.nonremap')
tallybins  = numpy.loadtxt(  'fixed-benchmark/fixed_1ev_u235.nonremapbins')
serpdata   = get_serpent_det('fixed-benchmark/u235_mono1ev_serp_det0.m')
mcnpdata   = get_mcnp_mctal( 'fixed-benchmark/u235_mono1ev_mcnp.tally')
mcnp_vol = 2000*2000*2000
title = 'Serpent2 (Serial) vs. WARP 4e7 histories, 1eV point source \n Flux in a cube of u235'

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths*mcnp_vol)
newflux=numpy.multiply(newflux,avg)
newflux=numpy.divide(newflux,4.0e7)  # source division not fixed in non-remapping

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
#mcnp_newflux = mcnp_newflux * mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])/mcnp_vol
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))
serpF = numpy.multiply(serpF,numpy.max(mcnp_newflux)/numpy.max(serpF))

fig = pl.figure(figsize=(10,6))
gs = gridspec.GridSpec(2, 1, height_ratios=[6, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])
ax0.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.18')
ax0.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax0.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
#ax0.set_xlabel('Energy (MeV)')
ax0.set_ylabel(r'Flux/Lethargy per Source Neutron (n/cm$^2$-s)')
#ax0.set_title(title)
handles, labels = ax0.get_legend_handles_labels()
ax0.legend(handles,labels,loc=2)
ax0.set_xlim([1e-11,20])
ax0.grid(True)
ax1.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax1.set_xlabel('Energy (MeV)')
ax1.set_ylabel('Relative Error \n vs. Serpent')
ax1.set_xlim([1e-11,20])
ax1.set_ylim([-5e-2,5e-2])
ax1.grid(True)

if plot:
	pl.show()
else:
	print 'fixed_spec.eps'
	fig.savefig('fixed_spec.eps')


#
#
#  process rates
#
#
def replace_invalid(argin):
	mask = np.isnan(argin) + np.isinf(argin)
	argin[mask] = np.interp(np.flatnonzero(mask), np.flatnonzero(~mask), argin[~mask], right=0)
	return argin


assembly_remap     = np.array(open("gpu-benchmark-6/assembly.active").read().split(),dtype=float)
homfuel_remap      = np.array(open("gpu-benchmark-6/homfuel.active").read().split(),dtype=float)
assembly_nonremap  = np.array(open("gpu-nonremap-6/assembly.nonremap.active").read().split(),dtype=float)
homfuel_nonremap   = np.array(open("gpu-nonremap-6/homfuel.nonremap.active").read().split(),dtype=float)

assembly_remap_time   = assembly_remap[1::2]
assembly_remap_time   = assembly_remap_time - assembly_remap_time[0]
assembly_remap_active = assembly_remap[0::2]
homfuel_remap_time    = homfuel_remap[1::2]
homfuel_remap_time    = homfuel_remap_time - homfuel_remap_time[0]
homfuel_remap_active  = homfuel_remap[0::2]
assembly_nonremap_time   = assembly_nonremap[1::2]
assembly_nonremap_time   = assembly_nonremap_time - assembly_nonremap_time[0]
assembly_nonremap_active = assembly_nonremap[0::2]
homfuel_nonremap_time    = homfuel_nonremap[1::2]
homfuel_nonremap_time    = homfuel_nonremap_time - homfuel_nonremap_time[0]
homfuel_nonremap_active  = homfuel_nonremap[0::2]

fig = pl.figure(figsize=(10,6))
ax=fig.add_subplot(1,1,1)
w_len=12
ar_x =    assembly_remap_active[:-1]
an_x = assembly_nonremap_active[:-1]
hr_x =     homfuel_remap_active[:-1]
hn_x =  homfuel_nonremap_active[:-1]
ar_y = smooth(  numpy.divide( ar_x , numpy.diff(assembly_remap_time   )  ), window_len=w_len)
an_y = smooth(  numpy.divide( an_x , numpy.diff(assembly_nonremap_time)  ), window_len=w_len)
hr_y = smooth(  numpy.divide( hr_x , numpy.diff(homfuel_remap_time    )  ), window_len=w_len)
hn_y = smooth(  numpy.divide( hn_x , numpy.diff(homfuel_nonremap_time )  ), window_len=w_len)
ar_y = np.append(ar_y,0.0)
an_y = np.append(an_y,0.0)
hr_y = np.append(hr_y,0.0)
hn_y = np.append(hn_y,0.0)
ar_y = replace_invalid( ar_y )
an_y = replace_invalid( an_y )
hr_y = replace_invalid( hr_y )
hn_y = replace_invalid( hn_y )
ar_diff = ar_y.__len__() - ar_x.__len__()
an_diff = an_y.__len__() - an_x.__len__()
hr_diff = hr_y.__len__() - hr_x.__len__()
hn_diff = hn_y.__len__() - hn_x.__len__()
ax.plot( ar_x, ar_y[:-ar_diff] , 'r',   label='Assembly,    Remapping')
ax.plot( an_x, an_y[:-an_diff] , 'b',   label='Assembly,    Non-Remapping')
ax.plot( hr_x, hr_y[:-hr_diff] , 'r--', label='Homogenized, Remapping')
ax.plot( hn_x, hn_y[:-hn_diff] , 'b--', label='Homogenized, Non-Remapping')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
ax.set_xlabel('Active Neutrons')
ax.set_ylabel('Neutron processing rate (n/s)')
#ax.set_xlim([0,5])
#ax.set_ylim([-5e-1,5e-1])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'process_rate.eps'
	fig.savefig('process_rate.eps')



