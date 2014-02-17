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
xspan = np.linspace(0,1,20)
yspan = np.linspace(0,1,20)
zspan = np.linspace(0,1,20)
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



#
#  direct inversion
#
name = 'direct_samp'
fig = pl.figure(figsize=(10,6))
ax1 = fig.add_subplot(2,1,1)
ax2 = fig.add_subplot(2,1,2)
x = np.linspace(0,2*np.pi,512)
y1 = 1.0/(2*np.pi*np.pi)*(np.sin(x)*x+np.cos(x)+x*x/2-1.0)  #cdf
y2 = 1.0/(2*np.pi*np.pi)*(x*np.cos(x)+x)					#pdf
x1xi = 4.2
tol = .1
y1xi = 1.0/(2*np.pi*np.pi)*(np.sin(x1xi)*x1xi+np.cos(x1xi)+x1xi*x1xi/2-1.0)
y2xi = 1.0/(2*np.pi*np.pi)*(x1xi*np.cos(x1xi)+x1xi)
ax1.plot(x,y1,label="CDF")
fill_x  = np.linspace(0,x1xi+tol,512)
fill_y1 = np.linspace(0,x1xi+tol,512)
fill_y2 = np.linspace(0,x1xi+tol,512)
fill_y1.fill( 1.0/(2*np.pi*np.pi)*(np.sin(x1xi-tol)*(x1xi-tol)+np.cos(x1xi-tol)+(x1xi-tol)*(x1xi-tol)/2-1.0) )
fill_y2.fill( 1.0/(2*np.pi*np.pi)*(np.sin(x1xi+tol)*(x1xi+tol)+np.cos(x1xi+tol)+(x1xi+tol)*(x1xi+tol)/2-1.0) )
a=0
for val in fill_x:
	if val > x1xi-tol:
		fill_y1[a]=1.0/(2*np.pi*np.pi)*(np.sin(val)*(val)+np.cos(val)+(val)*(val)/2-1.0)
	a=a+1
ax1.fill_between(fill_x,fill_y1,fill_y2,color='red',facecolor='red', alpha=0.25)
fill_x = np.linspace(x1xi-tol,x1xi+tol,128)
fill_y2 = 1.0/(2*np.pi*np.pi)*(np.sin(fill_x)*fill_x+np.cos(fill_x)+fill_x*fill_x/2-1.0)
ax1.fill_between(fill_x,0,fill_y2,color='red',facecolor='red', alpha=0.25)
ax2.fill_between(fill_x,0,2/np.pi,color='red',facecolor='red', alpha=0.25)
ax1.plot([0,x1xi],[y1xi,y1xi],'r--')
ax1.plot([x1xi,x1xi],[y1xi,0],'r--')
ax2.plot([x1xi,x1xi],[0,2/np.pi],'r--')   #[2/np.pi,y2xi],'r--')
ax2.plot(x,y2,label="PDF")
ax1.set_ylabel(r'CDF$(x)$')
ax2.set_ylabel(r'PDF$(x)$')
ax2.set_xlabel(r'$x$')
ax1.grid('on')
ax2.grid('on')
fig.text( 0.06, 0.6, r'$\xi=$',color='k', size=16)
ax1.set_xlim(0,2*np.pi)
ax1.set_ylim(0,1)
ax2.set_xlim(0,2*np.pi)
ax2.set_ylim(0,2/np.pi)

if plot:
	pl.show()
else:
	print name+'.pdf (PDF due to use of transparency)'
	fig.savefig(name+'.pdf')


#
#  rejection
#
name = 'rejection_samp'
accepted_x=[]
accepted_y=[]
rejected_x=[]
rejected_y=[]
for n in range(0,1000):
	rand1 = np.sqrt(np.random.random())*2.0*np.pi
	rand2 = rand1*np.random.random()/(np.pi*np.pi)
	if rand2 > 1.0/(2*np.pi*np.pi)*(rand1*np.cos(rand1)+rand1):
		rejected_x.append(rand1)
		rejected_y.append(rand2)
	else:
		accepted_x.append(rand1)
		accepted_y.append(rand2)
fig = pl.figure(figsize=(10,6))
ax = fig.add_subplot(1,1,1)
x = np.linspace(0,2*np.pi,512)
y1 = 1.0/(2*np.pi*np.pi)*(x*np.cos(x)+x)  #pdf
y2 = np.linspace(0,2/np.pi,512)
ax.fill_between(x,0,y1,color='blue',facecolor='blue', alpha=0.25)
ax.fill_between(x,y1,y2,color='red',facecolor='red', alpha=0.25)
ax.scatter(accepted_x,accepted_y,marker='.',color='blue')
ax.scatter(rejected_x,rejected_y,marker='.',color='red')
ax.set_ylabel(r'PDF$(x)$')
ax.set_xlabel(r'$x$')
ax.grid('on')
ax.set_xlim(0,2.0*np.pi)
ax.set_ylim(0,2.0/np.pi)

if plot:
	pl.show()
else:
	print name+'.pdf (PDF due to use of transparency)'
	fig.savefig(name+'.pdf')

#
#  random walk
#
name = 'random_walk'
#add figure
fig = pl.figure()
ax = Axes3D(fig)
#box dims
box_x=1.0
box_y=1.0
box_z=1.0
#color boundaries
out=0
color=[0,0,1]
idist=np.array([0.0,0.0,0.0,0.0,0.0,0.0])
#make walk
sigma=3.0
walk_x=[0]
walk_y=[0]
walk_z=[0]
n=0
for a in range(0,20):
	mu=2.0*np.random.random()-1.0
	phi=2*np.pi*np.random.random()
	dist=-np.log(np.random.random())/sigma
	d_x=np.sqrt(1.0-mu*mu)*np.sin(phi)
	d_y=np.sqrt(1.0-mu*mu)*np.cos(phi)
	d_z=mu
	walk_x.append(walk_x[n]+dist*d_x)
	walk_y.append(walk_y[n]+dist*d_y)
	walk_z.append(walk_z[n]+dist*d_z)
	if (not out) and (np.absolute(walk_x[n+1])>box_x or np.absolute(walk_y[n+1])>box_y or np.absolute(walk_z[n+1])>box_z):
		idist[0]=(-box_x-walk_x[n])/d_x
		idist[1]=(box_x-walk_x[n])/d_x
		idist[2]=(-box_y-walk_y[n])/d_y
		idist[3]=(box_y-walk_y[n])/d_y
		idist[4]=(-box_z-walk_z[n])/d_z
		idist[5]=(box_z-walk_z[n])/d_z
		real_t=np.min(idist[np.nonzero(np.select([np.array(idist)>0],[np.array(idist)]))])
		walk_x.insert(n+1,real_t*d_x+walk_x[n])
		walk_y.insert(n+1,real_t*d_y+walk_y[n])
		walk_z.insert(n+1,real_t*d_z+walk_z[n])
		ax.plot([walk_x[n],walk_x[n+1]],[walk_y[n],walk_y[n+1]],[walk_z[n],walk_z[n+1]],'.-',color=color)
		ax.scatter(walk_x[n+1],walk_y[n+1],walk_z[n+1],marker='x',s=200,color=[1,0,0])
		color=[np.random.random(),np.random.random(),np.random.random()]
		out=1
		n=n+1
	if (out and (np.absolute(walk_x[n+1])<box_x and np.absolute(walk_y[n+1])<box_y and np.absolute(walk_z[n+1])<box_z)):
		idist[0]=(-box_x-walk_x[n])/d_x
		idist[1]=(box_x-walk_x[n])/d_x
		idist[2]=(-box_y-walk_y[n])/d_y
		idist[3]=(box_y-walk_y[n])/d_y
		idist[4]=(-box_z-walk_z[n])/d_z
		idist[5]=(box_z-walk_z[n])/d_z
		real_t=np.min(idist[np.nonzero(np.select([np.array(idist)>0],[np.array(idist)]))])
		walk_x.insert(n+1,real_t*d_x+walk_x[n])
		walk_y.insert(n+1,real_t*d_y+walk_y[n])
		walk_z.insert(n+1,real_t*d_z+walk_z[n])
		ax.plot([walk_x[n],walk_x[n+1]],[walk_y[n],walk_y[n+1]],[walk_z[n],walk_z[n+1]],'.-',color=color)
		ax.scatter(walk_x[n+1],walk_y[n+1],walk_z[n+1],marker='x',s=200,color=[1,0,0])
		color=[np.random.random(),np.random.random(),np.random.random()]
		out=0
		n=n+1
	ax.plot([walk_x[n],walk_x[n+1]],[walk_y[n],walk_y[n+1]],[walk_z[n],walk_z[n+1]],'.-',color=color)
	n=n+1
#plot box
box_line = 'k--'
ax.plot([-box_x,box_x],[box_y,box_y],[-box_z,-box_z],box_line)
ax.plot([box_x,box_x],[box_y,-box_y],[-box_z,-box_z],box_line)
ax.plot([-box_x,box_x],[-box_y,-box_y],[-box_z,-box_z],box_line)
ax.plot([-box_x,-box_x],[box_y,-box_y],[-box_z,-box_z],box_line)
ax.plot([-box_x,box_x],[box_y,box_y],[box_z,box_z],box_line)
ax.plot([box_x,box_x],[box_y,-box_y],[box_z,box_z],box_line)
ax.plot([-box_x,box_x],[-box_y,-box_y],[box_z,box_z],box_line)
ax.plot([-box_x,-box_x],[box_y,-box_y],[box_z,box_z],box_line)
ax.plot([-box_x,-box_x],[-box_y,-box_y],[-box_z,box_z],box_line)
ax.plot([box_x,box_x],[-box_y,-box_y],[-box_z,box_z],box_line)
ax.plot([-box_x,-box_x],[box_y,box_y],[-box_z,box_z],box_line)
ax.plot([box_x,box_x],[box_y,box_y],[-box_z,box_z],box_line)
#plot axes
xspan = np.linspace(-2,2,20)
yspan = np.linspace(-2,2,20)
zspan = np.linspace(-2,2,20)
zero  = np.zeros_like(xspan)
ax.plot3D(xspan, zero, zero,'k-')
ax.plot3D(zero, yspan, zero,'k-')
ax.plot3D(zero, zero, zspan,'k-')
#labels, etc
view_multiplier=3.0
ax.set_xlim(-view_multiplier*box_x,view_multiplier*box_x)
ax.set_ylim(-view_multiplier*box_y,view_multiplier*box_y)
ax.set_zlim(-view_multiplier*box_z,view_multiplier*box_z)
ax.text(xspan.max() *1.1, 0, 0, "$x$", color='k', size=16)
ax.text(0, yspan.max() *1.05, 0, "$y$", color='k', size=16)
ax.text(0, 0, zspan.max() *1.05, "$z$", color='k', size=16)
#plot view
plot_el=17
plot_az=-23
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

