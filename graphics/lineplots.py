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
	
	
	
	
#
#  differential
#
name = 'diff_balance'

theta = 3.14159/4
phi   = 3.14159/4
r     = 1

#bounds
x1=1
x2=2
y1=1
y2=2
z1=1
z2=2

#points
p1=[x1,y1,z1]
p2=[x2,y1,z1]
p3=[x1,y2,z1]
p4=[x2,y2,z1]
p5=[x1,y1,z2]
p6=[x2,y1,z2]
p7=[x1,y2,z2]
p8=[x2,y2,z2]
v1 =np.array([p1 , p2])
v2 =np.array([p2 , p4])
v3 =np.array([p4 , p3])
v4 =np.array([p3 , p1])
v5 =np.array([p5 , p6])
v6 =np.array([p6 , p8])
v7 =np.array([p8 , p7])
v8 =np.array([p7 , p5])
v9 =np.array([p1 , p5])
v10=np.array([p2 , p6])
v11=np.array([p3 , p7])
v12=np.array([p4 , p8])

x_cent = (x1+x2)/2.0
y_cent = (y1+y2)/2.0
z_cent = (z1+z2)/2.0

#plot view
plot_el=17
plot_az=-23


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

a = Arrow3D([0,x_cent],[0,y_cent],[0,z_cent], mutation_scale=20, lw=1, arrowstyle="-|>", color="b")
ax.add_artist(a)
b = Arrow3D([x_cent,x_cent],[y_cent,y_cent],[z_cent,z_cent+1.0], mutation_scale=20, lw=1, arrowstyle="-|>", color="r")
ax.add_artist(b)

#plot axes
ax.plot3D(xspan, zero, zero,'k-')
ax.plot3D(zero, yspan, zero,'k-')
ax.plot3D(zero, zero, zspan,'k-')
#plot box
ax.plot3D( v1 [:,0] , v1 [:,1], v1 [:,2] ,'b:')
ax.plot3D( v2 [:,0] , v2 [:,1], v2 [:,2] ,'b:')
ax.plot3D( v3 [:,0] , v3 [:,1], v3 [:,2] ,'b:')
ax.plot3D( v4 [:,0] , v4 [:,1], v4 [:,2] ,'b:')
ax.plot3D( v5 [:,0] , v5 [:,1], v5 [:,2] ,'b:')
ax.plot3D( v6 [:,0] , v6 [:,1], v6 [:,2] ,'b:')
ax.plot3D( v7 [:,0] , v7 [:,1], v7 [:,2] ,'b:')
ax.plot3D( v8 [:,0] , v8 [:,1], v8 [:,2] ,'b:')
ax.plot3D( v9 [:,0] , v9 [:,1], v9 [:,2] ,'b:')
ax.plot3D( v10[:,0] , v10[:,1], v10[:,2] ,'b:')
ax.plot3D( v11[:,0] , v11[:,1], v11[:,2] ,'b:')
ax.plot3D( v12[:,0] , v12[:,1], v12[:,2] ,'b:')
#plot point
ax.scatter3D(x_cent,y_cent,z_cent,'o')
#plot cone
ang=np.linspace(0,2*3.14159,128)
rad=0.5
x_circ=rad*np.sin(ang)+x_cent
y_circ=rad*np.cos(ang)+y_cent
z_circ=z_cent+1
ax.plot3D( x_circ, y_circ, z_circ ,'r:')
ax.plot3D( [x_cent,rad*np.sin((-plot_az+0)*3.14159/180.0)+x_cent] , [y_cent,rad*np.cos((plot_az+0)*3.14159/180.0)+y_cent], [z_cent,z_cent+1] ,'r:')
ax.plot3D( [x_cent,rad*np.sin((-plot_az+180)*3.14159/180.0)+x_cent] , [y_cent,rad*np.cos((plot_az+180)*3.14159/180.0)+y_cent], [z_cent,z_cent+1] ,'r:')
#annotate
ax.text(xspan.max() *1.1, 0, 0, "$x$", color='k', size=16)
ax.text(0, yspan.max() *1.05, 0, "$y$", color='k', size=16)
ax.text(0, 0, zspan.max() *1.05, "$z$", color='k', size=16)
ax.text( x_cent , y1*0.8, z1, "$dx$", color='k', size=16)
ax.text(x2*1.1, y_cent *1.05, z1, "$dy$", color='k', size=16)
ax.text(x1, y1*0.9, z_cent, "$dz$", color='k', size=16)
ax.text(x1, y1*0.9, z_cent, "$dz$", color='k', size=16)
ax.text( 1*xproj,1*yproj,1*zproj,r"$\mathbf{\vec{r}}$",color='k', size=16)
ax.text( x_cent,y_cent,z_cent+1.1,r"$d\Omega$",color='k', size=16)
ax.text( x_cent,y_cent,z_cent+.3,r"$\mathbf{\hat{\Omega}}$",color='k', size=16)
# axis view
ax.view_init(elev=plot_el, azim=plot_az)
xlims=ax.get_xlim()
ylims=ax.get_ylim()
zlims=ax.get_zlim()
ax.set_xlim(0.6*(xlims+.5))
ax.set_ylim(0.6*(ylims+.5))
ax.set_zlim(0.6*(zlims+.5))
ax.set_aspect("equal")
ax.set_axis_off()


if plot:
	pl.show()
else:
	print name+'.eps'
	fig.savefig(name+'.eps')

