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
	data    = re.findall('\[ *\n[\w\s+-.]+\];',fstr)
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
widths=np.diff(tallybins);
avg=(tallybins[:-1]+tallybins[1:])/2;
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

