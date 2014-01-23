#! /usr/bin/env python

from pyne import ace
import pylab as pl


#
#  cross section plots
#
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
###################
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
################
tope_number=92235
temp_extension='.03c'
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib_u = lib.find_table(str(tope_number)+temp_extension)
tope_number=94239
temp_extension='.03c'
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib_pu = lib.find_table(str(tope_number)+temp_extension)
tope_number=92238
temp_extension='.03c'
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib_238 = lib.find_table(str(tope_number)+temp_extension)
tempstr = '%6.2f' % (lib_u.temp/8.617332478e-11)
ene_u=lib_u.energy
xs_u =lib_u.reactions[18].sigma
ene_pu=lib_pu.energy
xs_pu =lib_pu.reactions[18].sigma
ene_238=lib_238.energy
xs_238 =lib_238.reactions[18].sigma
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.loglog(ene_u,xs_u,label='U-235')
ax.loglog(ene_238,xs_238,label='U-238')
ax.loglog(ene_pu,xs_pu,label='Pu-239')
pl.title('Fission cross sections for U-235, U-238 , and Pu-239 at '+tempstr+'K')
pl.ylabel('Total Fission Cross Section (barns)')
pl.xlabel('Energy (MeV)')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=1)
pl.grid('on')
lims=pl.ylim()
pl.ylim(1e-4,lims[1])
pl.show()
fig.savefig('xs_fissile.eps')



#
#  nu plots
#
tope_number=92235
temp_extension='.03c'
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib_u = lib.find_table(str(tope_number)+temp_extension)
tope_number=94239
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib_pu = lib.find_table(str(tope_number)+temp_extension)
tope_number=92238
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
lib_238 = lib.find_table(str(tope_number)+temp_extension)
temp_cold 		= '%6.2f' % (lib_u.temp/8.617332478e-11)
nu_pu_cold 		= lib_pu.nu_t_value
nu_pu_cold_e	= lib_pu.nu_t_energy
nu_u_cold 		= lib_u.nu_t_value
nu_u_cold_e 	= lib_u.nu_t_energy
nu_238_cold 	= lib_238.nu_t_value
nu_238_cold_e 	= lib_238.nu_t_energy
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx( nu_u_cold_e, nu_u_cold,label='U-235')
ax.semilogx(nu_238_cold_e,nu_238_cold,label='U-238')
ax.semilogx(nu_pu_cold_e,nu_pu_cold,label='Pu-235')
#ax.loglog( nu_u_hot_e, nu_u_hot,label= 'U-235 at '+temp_hot+'K')
#ax.loglog(nu_pu_hot_e,nu_pu_hot,label='Pu-235 at '+temp_hot+'K')
pl.title('Fission neutron yields for U-235, U-238, and Pu-239')
pl.ylabel('Cross Section (barns)')
pl.xlabel('Energy (MeV)')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=2)
pl.grid('on')
#lims=pl.ylim()
#pl.ylim(0,lims[1])
pl.show()
fig.savefig('nu_compare.eps')