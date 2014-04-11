#! /usr/bin/python
import sys
import numpy
import os
import re
from matplotlib.colors import LogNorm
import matplotlib.gridspec as gridspec
import matplotlib.pyplot as plt 

from termcolor import colored
from pyne import ace
import numpy as np
import pylab as pl
import os
import sys

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



#
#  homogenized
#
tally      = numpy.loadtxt('gpu-benchmark/homfuel.tally')
tallybins  = numpy.loadtxt('gpu-benchmark/homfuel.tallybins')
serpdata   = get_serpent_det('serpent-benchmark/homfuel_det0.m')
mcnpdata   = get_mcnp_mctal('mcnp-benchmark/homfuel.tally')
mcnp_vol = 2000*2000*2000
title = 'Serpent2 (Serial) vs. WARP 6e6 histories (2e6 discarded)\n Flux in homogenized block of UO2 and water'	

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths)
newflux=numpy.multiply(newflux,avg)

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
mcnp_newflux = mcnp_newflux * mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))

fig = pylab.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.15')
ax.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
ax.set_xlabel('Energy (MeV)')
ax.set_ylabel('Normalized Flux/Lethary')
ax.set_title(title)
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
ax.set_xlim([1e-11,20])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'homfuel_spec.eps'
	fig.savefig('homfuel_spec.eps')

fig = pylab.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
#ax.semilogx(serpE,serpErr,'b',linestyle='steps-mid',label='Serpent Rel. Err.')
#ax.semilogx(mcnp_avg,mcnp_err,'k',linestyle='steps-mid',label='MCNP 6.1 Rel. Err.')
#ax.semilogx(avg,warp_err,'r',linestyle='steps-mid',label='WARP Rel. Err.')
ax.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax.set_xlabel('Energy (MeV)')
ax.set_ylabel('Relative Error')
ax.set_title(title)
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
#pylab.ylim([0,.25])
ax.set_xlim([1e-11,20])
ax.set_ylim([-1e-1,1e-1])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'homfuel_spec_err.eps'
	fig.savefig('homfuel_spec_err.eps')

xmin = ymin = -1000
xmax = ymax =  1000
data=np.array(open("gpu-benchmark/homfuel.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
fig = pl.figure(figsize=(16,6))
ax = fig.add_subplot(1,2,1)
ax.hist2d(data[:,0], data[:,1], range=[[xmin, xmax], [ymin, ymax]], bins=256 , normed=True)#norm=LogNorm())
#fig.colorbar(ax.get_images()[0], ax=ax, ticks=np.linspace(0,.005,11), cmap=pl.cm.jet, label='Relative Probability')  #, norm=pl.matplotlib.colors.Normalize(vmin=5, vmax=10))
ax.set_xlabel('x (cm)')
ax.set_ylabel('y (cm)')
ax.grid('on',color='k')
pl.axis('equal')

xmin = -1000
xmax =  1000
ymin = -1000
ymax =  1000
data=np.array(open("gpu-benchmark/homfuel.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
ax = fig.add_subplot(1,2,2)
ax.hist2d(data[:,0], data[:,2], range=[[xmin, xmax], [ymin, ymax]], bins=256 , normed=True)#norm=LogNorm())
#fig.colorbar(ax.get_images()[0], ax=ax, ticks=np.linspace(0,.005,11), cmap=pl.cm.jet, label='Relative Probability')  #, norm=pl.matplotlib.colors.Normalize(vmin=5, vmax=10))
ax.set_xlabel('x (cm)')
ax.set_ylabel('z (cm)')
ax.grid('on',color='k')
pl.axis('equal')
#pl.set_title(title)
fig.subplots_adjust(right=0.8)
cbar_ax = fig.add_axes([0.85, 0.15, 0.05, 0.7])
fig.colorbar(ax.get_images()[0], cax=cbar_ax)

if plot:
	pl.show()
else:
	print 'homfuel_fiss.eps'
	fig.savefig('homfuel_fiss.eps')






#
#  pincell
#
tally      = numpy.loadtxt('gpu-benchmark/pincell.tally')
tallybins  = numpy.loadtxt('gpu-benchmark/pincell.tallybins')
serpdata   = get_serpent_det('serpent-benchmark/pincell_det0.m')
mcnpdata   = get_mcnp_mctal('mcnp-benchmark/pincell.tally')
mcnp_vol = 125.663706144
title='Serpent2 (Serial) vs. WARP 6e6 histories (2e6 discarded)\n Flux in the water of surrpunding a single UO2 pin'

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths)
newflux=numpy.multiply(newflux,avg)

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
mcnp_newflux = mcnp_newflux * mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))

fig = pylab.figure(figsize=(8,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.15')
ax.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
ax.set_xlabel('Energy (MeV)')
ax.set_ylabel('Normalized Flux/Lethary')
ax.set_title(title)
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
ax.set_xlim([1e-11,20])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'pincell_spec.eps'
	fig.savefig('pincell_spec.eps')

fig = pylab.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
#ax.semilogx(serpE,serpErr,'b',linestyle='steps-mid',label='Serpent Rel. Err.')
#ax.semilogx(mcnp_avg,mcnp_err,'k',linestyle='steps-mid',label='MCNP 6.1 Rel. Err.')
#ax.semilogx(avg,warp_err,'r',linestyle='steps-mid',label='WARP Rel. Err.')
ax.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax.set_xlabel('Energy (MeV)')
ax.set_ylabel('Relative Error')
ax.set_title(title)
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
#pylab.ylim([0,.25])
ax.set_xlim([1e-11,20])
ax.set_ylim([-1e-1,1e-1])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'pincell_spec_err.eps'
	fig.savefig('pincell_spec_err.eps')


fig = pl.figure(figsize=(8,6))
gs = gridspec.GridSpec(1, 2, width_ratios=[10, 1]) 
ax0 = plt.subplot(gs[0])
ax1 = plt.subplot(gs[1])

xmin = ymin = -2
xmax = ymax =  2
data=np.array(open("gpu-benchmark/pincell.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
#ax0 = fig.add_subplot(1,1,1)
ax0.hist2d(data[:,0], data[:,1], range=[[xmin, xmax], [ymin, ymax]], bins=256 , normed=True)#norm=LogNorm())
ax0.set_xlabel('x (cm)')
ax0.set_ylabel('y (cm)')
ax0.grid('on',color='k')
#pl.axis('equal')

xmin = -2
xmax =  2
ymin = -21
ymax =  21
data=np.array(open("gpu-benchmark/pincell.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
#ax1 = fig.add_subplot(1,1,1)
ax1.hist2d(data[:,0], data[:,2], range=[[xmin, xmax], [ymin, ymax]], bins=256 , normed=True)#norm=LogNorm())
ax1.set_xlabel('x (cm)')
ax1.set_ylabel('z (cm)')
ax1.grid('on',color='k')
#pl.axis('equal')
fig.subplots_adjust(right=0.8)
cbar_ax = fig.add_axes([0.85, 0.15, 0.05, 0.7])
fig.colorbar(ax0.get_images()[0], cax=cbar_ax)

if plot:
	pl.show()
else:
	print 'pincell_fiss.eps'
	fig.savefig('pincell_fiss.eps')


#
#  godiva
#
tally      = numpy.loadtxt('gpu-benchmark/godiva.tally')
tallybins  = numpy.loadtxt('gpu-benchmark/godiva.tallybins')
serpdata   = get_serpent_det('serpent-benchmark/godiva_det0.m')
mcnpdata   = get_mcnp_mctal('mcnp-benchmark/godiva.tally')
mcnp_vol = 555.647209455
title = 'Serpent2 (Serial) vs. WARP 6e6 histories (2e6 discarded)\n Flux in a bare Pu-239 sphere (Godiva)'

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths)
newflux=numpy.multiply(newflux,avg)

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
mcnp_newflux = mcnp_newflux * mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))

fig = pylab.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.15')
ax.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
ax.set_xlabel('Energy (MeV)')
ax.set_ylabel('Normalized Flux/Lethary')
ax.set_title(title)
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
ax.set_xlim([1e-11,20])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'godiva_spec.eps'
	fig.savefig('godiva_spec.eps')

fig = pylab.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
#ax.semilogx(serpE,serpErr,'b',linestyle='steps-mid',label='Serpent Rel. Err.')
#ax.semilogx(mcnp_avg,mcnp_err,'k',linestyle='steps-mid',label='MCNP 6.1 Rel. Err.')
#ax.semilogx(avg,warp_err,'r',linestyle='steps-mid',label='WARP Rel. Err.')
ax.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax.set_xlabel('Energy (MeV)')
ax.set_ylabel('Relative Error')
ax.set_title(title)
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
#pylab.ylim([0,.25])
ax.set_xlim([1e-11,20])
ax.set_ylim([-1e-1,1e-1])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'godiva_spec_err.eps'
	fig.savefig('godiva_spec_err.eps')

xmin = ymin = -7
xmax = ymax =  7
data=np.array(open("gpu-benchmark/godiva.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
fig = pl.figure(figsize=(16,6))
ax = fig.add_subplot(1,2,1)
ax.hist2d(data[:,0], data[:,1], range=[[xmin, xmax], [ymin, ymax]], bins=256 , normed=True)#norm=LogNorm())
#fig.colorbar(ax.get_images()[0], ax=ax, ticks=np.linspace(0,.005,11), cmap=pl.cm.jet, label='Relative Probability')  #, norm=pl.matplotlib.colors.Normalize(vmin=5, vmax=10))
ax.set_xlabel('x (cm)')
ax.set_ylabel('y (cm)')
ax.grid('on',color='k')
pl.axis('equal')

xmin = -7
xmax =  7
ymin = -7
ymax =  7
data=np.array(open("gpu-benchmark/godiva.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
ax = fig.add_subplot(1,2,2)
ax.hist2d(data[:,0], data[:,2], range=[[xmin, xmax], [ymin, ymax]], bins=256 , normed=True)#norm=LogNorm())
#fig.colorbar(ax.get_images()[0], ax=ax, ticks=np.linspace(0,.005,11), cmap=pl.cm.jet, label='Relative Probability')  #, norm=pl.matplotlib.colors.Normalize(vmin=5, vmax=10))
ax.set_xlabel('x (cm)')
ax.set_ylabel('z (cm)')
ax.grid('on',color='k')
pl.axis('equal')
#pl.set_title(title)
fig.subplots_adjust(right=0.8)
cbar_ax = fig.add_axes([0.85, 0.15, 0.05, 0.7])
fig.colorbar(ax.get_images()[0], cax=cbar_ax)

if plot:
	pl.show()
else:
	print 'godiva_fiss.eps'
	fig.savefig('godiva_fiss.eps')



#
#  assembly
#
tally      = numpy.loadtxt('gpu-benchmark/assembly.tally')
tallybins  = numpy.loadtxt('gpu-benchmark/assembly.tallybins')
serpdata   = get_serpent_det('serpent-benchmark/assembly_det0.m')
mcnpdata   = get_mcnp_mctal('mcnp-benchmark/assembly.tally')
mcnp_vol = 125.663706144
title = 'Serpent2 (Serial) vs. WARP 6e6 histories (2e6 discarded)\n Flux in the water of a hexagonal array of UO2 pins'

widths=numpy.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
newflux=numpy.array(tally[:,0])
warp_err = numpy.array(tally[:,1])
newflux=numpy.divide(newflux,widths)
newflux=numpy.multiply(newflux,avg)

mcnp_bins = mcnpdata[0]
mcnp_widths=numpy.diff(mcnp_bins);
mcnp_avg=(mcnp_bins[:-1]+mcnp_bins[1:])/2;
#first is under, last value is TOTAL, clip
mcnp_newflux= mcnpdata[1][1:-1]
mcnp_err = mcnpdata[2][1:-1]
mcnp_newflux=numpy.divide(mcnp_newflux,mcnp_widths)
mcnp_newflux=numpy.multiply(mcnp_newflux,mcnp_avg)
mcnp_newflux = mcnp_newflux * mcnp_vol  # mcnp divides by volume

serpE=numpy.array(serpdata['DETfluxlogE'][:,2])
serpErr=numpy.array(serpdata['DETfluxlog'][:,11])
serpF=numpy.array(serpdata['DETfluxlog'][:,10])
serpE = numpy.squeeze(numpy.asarray(serpE))
serpErr = numpy.squeeze(numpy.asarray(serpErr))
serpF = numpy.squeeze(numpy.asarray(serpF))

fig = pylab.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx(serpE,serpF,'b',linestyle='steps-mid',label='Serpent 2.1.15')
ax.semilogx(mcnp_avg,mcnp_newflux,'k',linestyle='steps-mid',label='MCNP 6.1')
ax.semilogx(avg,newflux,'r',linestyle='steps-mid',label='WARP')
ax.set_xlabel('Energy (MeV)')
ax.set_ylabel('Normalized Flux/Lethary')
ax.set_title(title)
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
ax.set_xlim([1e-11,20])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'assembly_spec.eps'
	fig.savefig('assembly_spec.eps')

fig = pylab.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
#ax.semilogx(serpE,serpErr,'b',linestyle='steps-mid',label='Serpent Rel. Err.')
#ax.semilogx(mcnp_avg,mcnp_err,'k',linestyle='steps-mid',label='MCNP 6.1 Rel. Err.')
#ax.semilogx(avg,warp_err,'r',linestyle='steps-mid',label='WARP Rel. Err.')
ax.semilogx(serpE,numpy.divide(serpF-newflux,serpF),'b',linestyle='steps-mid',label='Flux Relative Error vs. Serpent')
ax.set_xlabel('Energy (MeV)')
ax.set_ylabel('Relative Error')
ax.set_title(title)
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles,labels,loc=2)
#pylab.ylim([0,.25])
ax.set_xlim([1e-11,20])
ax.set_ylim([-2e-1,2e-1])
ax.grid(True)

if plot:
	pl.show()
else:
	print 'assembly_spec_err.eps'
	fig.savefig('assembly_spec_err.eps')

xmin = -40
xmax =  40
ymin = -30
ymax =  30
data=np.array(open("gpu-benchmark/assembly.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.hist2d(data[:,0], data[:,1], range=[[xmin, xmax], [ymin, ymax]], bins=256 , normed=True)#norm=LogNorm())
fig.colorbar(ax.get_images()[0], ax=ax, ticks=np.linspace(0,.005,11), cmap=pl.cm.jet, label='Relative Probability')  #, norm=pl.matplotlib.colors.Normalize(vmin=5, vmax=10))
ax.set_xlabel('x (cm)')
ax.set_ylabel('y (cm)')
ax.grid('on',color='k')
pl.axis('equal')
ax.set_title(title)

if plot:
	pl.show()
else:
	print 'assembly_fiss1.eps'
	fig.savefig('assembly_fiss1.eps')

xmin = -35
xmax =  35
ymin = -21
ymax =  21
data=np.array(open("gpu-benchmark/assembly.fission_points").read().split(),dtype=float)
data=np.reshape(data,(-1,4))
fig = pl.figure(figsize=(13,6))
ax = fig.add_subplot(1,1,1)
ax.hist2d(data[:,0], data[:,2], range=[[xmin, xmax], [ymin, ymax]], bins=256 , normed=True)#norm=LogNorm())
fig.colorbar(ax.get_images()[0], ax=ax, ticks=np.linspace(0,.005,11), cmap=pl.cm.jet, label='Relative Probability')  #, norm=pl.matplotlib.colors.Normalize(vmin=5, vmax=10))
ax.set_xlabel('x (cm)')
ax.set_ylabel('y (cm)')
ax.grid('on',color='k')
pl.axis('equal')
ax.set_title(title)

if plot:
	pl.show()
else:
	print 'assembly_fiss2.eps'
	fig.savefig('assembly_fiss2.eps')





