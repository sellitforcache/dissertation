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
#  spherical 
#

theta = 3.14159/4
phi   = 3.14159/4
r     = 1

xproj = np.sin(theta)*np.sin(phi)
yproj = np.sin(theta)*np.cos(phi)
zproj = np.cos(theta)

#add figure
fig = pl.figure()
ax = Axes3D(fig)

## add Arrow3D
class Arrow3D(FancyArrowPatch):
    def __init__(self, xs, ys, zs, *args, **kwargs):
        FancyArrowPatch.__init__(self, (0,0), (0,0), *args, **kwargs)
        self._verts3d = xs, ys, zs

    def draw(self, renderer):
        xs3d, ys3d, zs3d = self._verts3d
        xs, ys, zs = proj3d.proj_transform(xs3d, ys3d, zs3d, renderer.M)
        self.set_positions((xs[0],ys[0]),(xs[1],ys[1]))
        FancyArrowPatch.draw(self, renderer)

a = Arrow3D([0,xproj],[0,yproj],[0,zproj], mutation_scale=20, lw=1, arrowstyle="-|>", color="b")
ax.add_artist(a)

#set axis spans
xspan = np.linspace(0,1.3*xproj,20)
yspan = np.linspace(0,1.3*yproj,20)
zspan = np.linspace(0,1.3*zproj,20)
zero = np.zeros_like(xspan)


#plot axes
ax.plot3D(xspan, zero, zero,'k--')
ax.plot3D(zero, yspan, zero,'k--')
ax.plot3D(zero, zero, zspan,'k--')
#plot box
#xproj
ax.plot3D( [xproj,xproj] , [0,yproj] , [0,0],'k:')
ax.plot3D( [xproj,xproj] , [0,0] , [0,zproj],'k:')
ax.plot3D( [xproj,xproj] , [0,yproj] , [zproj,zproj],'k:')
ax.plot3D( [xproj,xproj] , [yproj,yproj] , [0,zproj],'k:')
ax.plot3D( [0,xproj] , [yproj,yproj] , [0,0],'k:')
ax.plot3D( [0,0] , [yproj,yproj] , [0,zproj],'k:')
ax.plot3D( [0,xproj] , [yproj,yproj] , [zproj,zproj],'k:')
ax.plot3D( [0,xproj] , [0,0] , [zproj,zproj],'k:')
ax.plot3D( [0,0] , [0,yproj] , [zproj,zproj],'k:')
ax.plot3D( [0,xproj] , [0,yproj] , [0,0],'k:')
#plot solid projections
ax.plot3D( [0,xproj] , [0,0] , [0,0],'b-')
ax.plot3D( [0,0] , [0,yproj] , [0,0],'b-')
ax.plot3D( [0,0] , [0,0] , [0,zproj],'b-')
# arcs
ax.plot3D( .2*np.cos(np.linspace(0,phi,20)) , .2*np.sin(np.linspace(0,phi,20)) , 0 ,'r-')
ax.plot3D( .2*np.sin(np.linspace(0,theta,20))*np.cos(phi) , .2*np.sin(np.linspace(0,theta,20))*np.sin(phi) , .2*np.cos(np.linspace(0,theta,20)) ,'r-')
#annotate
ax.text(xspan.max() *1.1, 0, 0, "$x$", color='k', size=16)
ax.text(0, yspan.max() *1.05, 0, "$y$", color='k', size=16)
ax.text(0, 0, zspan.max() *1.05, "$z$", color='k', size=16)
ax.text( xproj ,0, 0,"$\hat{\Omega}_x$",color='k', size=16)
ax.text( 0,yproj,0,"$\hat{\Omega}_y$",color='k', size=16)
ax.text( 0,0,zproj,"$\hat{\Omega}_z$",color='k', size=16)
ax.text( 1*xproj,1*yproj,1*zproj,"$\mathbf{\hat{\Omega}}$",color='k', size=16)
ax.text( .2*np.sin(theta/2)*np.cos(phi) , .2*np.sin(theta/2)*np.sin(phi) , .2*np.cos(theta/2), r'$\theta$',color='k', size=16)
ax.text( .2*np.cos(phi/2),.2*np.sin(phi/2),0,"$\phi$",color='k', size=16)

# axis view
ax.view_init(elev=theta*180/3.14159/2, azim=phi*180/3.14159/2)
ax.set_aspect("equal")
ax.set_axis_off()


if plot:
	pl.show()
else:
	print 'ang_relation.eps'
	fig.savefig('ang_relation.eps')

