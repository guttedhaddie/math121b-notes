settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}

");
import graph;

size(180);

pair vu=(1,-2);
pair vv=(0,1);
pair rvu=(-2,-1);
pair rvv=(-1,0);

pair h(real s){return sqrt(3)*cosh(s)*vu+sqrt(11)*sinh(s)*vv;}
pair hh(real s){return -sqrt(3)*cosh(s)*vu+sqrt(11)*sinh(s)*vv;}

real m=-0.8;
real M=2.1;
path H=graph(h,m,M);
draw(H,blue);
path HH=graph(hh,-M,-m);
draw(HH,blue);

draw(-3.1*vu--3.1*vu,dashed+green,Arrow);
draw(-7.1*vv--7.1*vv,dashed+green,Arrow);

draw("$\mathbf{v}_1$",(0,0)--vu,Arrow);
draw("$\mathbf{v}_2$",(0,0)--vv,Arrow);

void linu(real t){draw(t*vu+0.1*rvu--t*vu-0.1rvu,heavygreen);
	label("$"+(string) t +"$",t*vu,rvu,heavygreen);}
void linv(real t){draw(t*vv+0.1*rvv--t*vv-0.1rvv,heavygreen);
	label("$"+(string) t +"$",t*vv,rvv,heavygreen);}

linu(1);
linu(2);
linu(3);
//linu(4);
linu(-1);
linu(-2);
linu(-3);
//linu(-4);

linv(6);
linv(3);
linv(-6);
linv(-3);

label("$t_1$",3.2vu,vu,heavygreen);
label("$t_2$",7.1vv,vv,heavygreen);

	
xaxis("$x$",-7,7,red+dashed,RightTicks(new real[]{-6,-3,3,6}));
yaxis("$y$",-7.5,7.5,red+dashed);

//pair zza=(6,1+sqrt(37));
//pair zzb=(1+sqrt(37),-6);
//draw(zza--(0,0)--zzb);