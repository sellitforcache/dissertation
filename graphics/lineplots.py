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

a = Arrow3D([0,xproj],[0,yproj],[0,zproj], mutation_scale=20, lw=1, arrowstyle="-|>", color="k")
ax.add_artist(a)

#set axis spans
xspan, yspan, zspan = 3 * [np.linspace(0,1,20)]
zero = np.zeros_like(xspan)


#plot axes
ax.plot3D(xspan, zero, zero,'k--')
ax.plot3D(zero, yspan, zero,'k--')
ax.plot3D(zero, zero, zspan,'k--')
#plot box
#ax.plot3D( [xproj,xproj] , [0,yproj,] , [0,0],'k:')
#ax.plot3D( [0,xproj] , [yproj,yproj,] , [0,0],'k:')
#ax.plot3D( [xproj,xproj] , [,yproj,] , [zproj,zproj],'k:')
#plot solid projections
ax.plot3D( [0,xproj] , [0,0] , [0,0],'k-')
ax.plot3D( [0,0] , [0,yproj] , [0,0],'k-')
ax.plot3D( [0,0] , [0,0] , [0,zproj],'k-')
#annotate
ax.text(xspan.max() *1.1, 0, 0, "x", color='k')
ax.text(0, yspan.max() *1.1, 0, "y", color='k')
ax.text(0, 0, zspan.max() *1.1, "z", color='k')
ax.text( xproj ,0, 0,"$\hat{\Omega}_x$",color='k')
ax.text( 0,yproj,0,"$\hat{\Omega}_y$",color='k')
ax.text( 0,0,zproj,"$\hat{\Omega}_z$",color='k')

ax.set_aspect("equal")
ax.set_axis_off()


if plot:
	pl.show()
else:
	print 'ang_relation.eps'
	fig.savefig('ang_relation.eps')

