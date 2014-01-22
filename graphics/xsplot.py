#! /usr/bin/env python

from pyne import ace
import pylab as pl

tope_number=92235
temp_extension='.03c'
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib = lib.find_table(str(tope_number)+temp_extension)
tempstr = '%6.2f' % (lib.temp/8.617332478e-11)
ene=lib.energy
xs_1=lib.sigma_t
xs_2=lib.reactions[2].sigma
xs_3=lib.reactions[18].sigma
xs_4=lib.reactions[102].sigma
xs_5=lib.reactions[51].sigma
xs_5_start=lib.reactions[51].IE-1
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.loglog(ene,xs_1,label='Total')
ax.loglog(ene,xs_2,label='Elastic Scatter')
ax.loglog(ene,xs_3,label='Fission (total)')
ax.loglog(ene,xs_4,label='Capture')
ax.loglog(ene[xs_5_start:],xs_5,label='Inelastic Scatter to 1st Excited State')
pl.title('Uranium-235 at '+tempstr+'K')
pl.ylabel('Cross Section (barns)')
pl.xlabel('Energy (MeV)')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=3)
pl.grid('on')
lims=pl.ylim()
pl.ylim(1e-4,lims[1])
pl.show()
fig.savefig('xs_u235.eps')



tope_number=3006
temp_extension='.03c'
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib = lib.find_table(str(tope_number)+temp_extension)
tempstr = '%6.2f' % (lib.temp/8.617332478e-11)
ene=lib.energy
xs_1=lib.sigma_t
xs_2=lib.reactions[2].sigma
xs_3=lib.reactions[105].sigma
xs_3_start=lib.reactions[105].IE-1
xs_4=lib.reactions[102].sigma
xs_5=lib.reactions[51].sigma
xs_5_start=lib.reactions[51].IE-1
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.loglog(ene,xs_1,label='Total')
ax.loglog(ene,xs_2,label='Elastic Scatter')
ax.loglog(ene[xs_3_start:],xs_3,label='(n,H3)')
ax.loglog(ene,xs_4,label='Capture')
ax.loglog(ene[xs_5_start:],xs_5,label='Inelastic Scatter to 1st Excited State')
pl.title('Lithium-6 at '+tempstr+'K')
pl.ylabel('Cross Section (barns)')
pl.xlabel('Energy (MeV)')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=1)
pl.grid('on')
lims=pl.ylim()
pl.ylim(1e-4,lims[1])
pl.show()
fig.savefig('xs_li6.eps')