#! /usr/bin/env python

from pyne import ace
import numpy as np
import pylab as pl
import os
import sys

#
#  Get input arguments
#
plot = len(sys.argv)-1


#
#  set latex and font
#  !!!! THIS BREAKS THE PLOTS BUT THEY RENDER BEAUTIFULLY IN THE .eps FILE !!!!
if plot:
	print ' --- Plotting without LaTeX, NO FILES WRITTEN'
else:
	print ' --- Rendering .eps files with LaTeX enabled'
	pl.rc('text', usetex=True)
	pl.rc('font', family='serif')


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
if plot:
	pl.show()
else:
	print 'xs_u235.eps'
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
ax.loglog(ene[xs_3_start:],xs_3,label='(n,$^3$H)')
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
if plot:
	pl.show()
else:
	print 'xs_li6.eps'
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
if plot:
	pl.show()
else:
	print 'xs_fissile.eps'
	fig.savefig('xs_fissile.eps')
################
tope_number=94239
lib=ace.Library('/usr/local/SERPENT/xsdata/endfb7/acedata/'+str(tope_number)+'ENDF7.ace')
lib.read()
temp_extension='.03c'
lib_pu1 = lib.find_table(str(tope_number)+temp_extension)
temp1 = '%6.2f' % (lib_pu1.temp/8.617332478e-11)
ene_1=lib_pu1.energy
xs_1 =lib_pu1.reactions[18].sigma
temp_extension='.09c'
lib_pu2 = lib.find_table(str(tope_number)+temp_extension)
temp2 = '%6.2f' % (lib_pu2.temp/8.617332478e-11)
ene_2=lib_pu2.energy
xs_2 =lib_pu2.reactions[18].sigma
temp_extension='.15c'
lib_pu3 = lib.find_table(str(tope_number)+temp_extension)
temp3 = '%6.2f' % (lib_pu3.temp/8.617332478e-11)
ene_3=lib_pu3.energy
xs_3 =lib_pu3.reactions[18].sigma
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
dex1_1=np.where(ene_1>7e-6)[0][0]
dex1_2=np.where(ene_1>8.5e-6)[0][0]
dex2_1=np.where(ene_2>7e-6)[0][0]
dex2_2=np.where(ene_2>8.5e-6)[0][0]
dex3_1=np.where(ene_3>7e-6)[0][0]
dex3_2=np.where(ene_3>8.5e-6)[0][0]
ax.loglog(ene_1[dex1_1:dex1_2],   xs_1[dex1_1:dex1_2],    label=temp1+'K')
ax.loglog(ene_2[dex2_1:dex2_2],   xs_2[dex2_1:dex2_2],    label=temp2+'K')
ax.loglog(ene_3[dex3_1:dex3_2],   xs_3[dex3_1:dex3_2],    label=temp3+'K')
pl.title('Fission cross section of Pu-239')
pl.ylabel('Total Fission Cross Section (barns)')
pl.xlabel('Energy (MeV)')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=1)
pl.grid('on')
pl.xlim(7e-6,8.5e-6)
lims=pl.ylim()
#pl.ylim(1e-4,lims[1])
if plot:
	pl.show()
else:
	print 'xs_pu_broaden.eps'
	fig.savefig('xs_pu_broaden.eps')



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
if plot:
	pl.show()
else:
	print 'nu_compare.eps'
	fig.savefig('nu_compare.eps')
	
#
# MB dist
#
def mb_speed(vel_grid,m_in,T):
	m=m_in*1.66053892e-27
	pi = 3.14159
	kT = T * 1.3806488e-23
	a=np.sqrt(np.power(m/(2*pi*kT),3))
	b=4*pi*np.power(vel_grid,2)
	c=np.exp(-m*np.power(vel_grid,2)/(2*kT))
	return np.multiply(c,np.multiply(a,b))
x=np.array(np.linspace(0,5000,5000))
m1=239
y1_1= mb_speed(x,m1,300)
y1_2= mb_speed(x,m1,900)
y1_3= mb_speed(x,m1,1500)
m2=16
y2_1= mb_speed(x,m2,300)
y2_2= mb_speed(x,m2,900)
y2_3= mb_speed(x,m2,1500)
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
ax.semilogx( x, y1_1, label='A=239, 300.00K')
ax.semilogx( x, y1_2, label='A=239, 900.00K')
ax.semilogx( x, y1_3, label='A=239, 1500.00K')
ax.semilogx( x, y2_1, label='A=16,  300.00K')
ax.semilogx( x, y2_2, label='A=16,  900.00K')
ax.semilogx( x, y2_3, label='A=16,  1500.00K')
pl.title('')
pl.ylabel('')
pl.xlabel('Energy (MeV)')
handles, labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc=2)
pl.grid('on')
if plot:
	pl.show()
else:
	print 'MB_dist.eps'
	fig.savefig('MB_dist.eps')
