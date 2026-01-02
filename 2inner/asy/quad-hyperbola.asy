settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}

");
import graph;

size(180);

pair vu=(4/5,3/5);
pair vv=(-3/5,4/5);

pair h(real s){return (3*cosh(s),4*sinh(s));}

real l=0.7;
path H=graph(h,-l,l);
path HH=reflect((0,0),(0,1))*H;

transform T=(0,0,4/5,-3/5,3/5,4/5);

draw(-5.1*vu--5.1*vu,dashed+green,Arrow);
draw(-5.1*vv--5.1*vv,dashed+green,Arrow);

draw("$\mathbf{v}_1$",(0,0)--vu,Arrow);
draw("$\mathbf{v}_2$",(0,0)--vv,Arrow);

void linu(real t){draw(t*vu+0.1*vv--t*vu-0.1vv,heavygreen);
	label("$"+(string) t +"$",t*vu,-vv,heavygreen);}
void linv(real t){draw(t*vv+0.1*vu--t*vv-0.1vu,heavygreen);
	label("$"+(string) t +"$",t*vv,vu,heavygreen);}

linu(1);
linu(2);
linu(3);
linu(4);
linu(-1);
linu(-2);
linu(-3);
linu(-4);

linv(1);
linv(2);
linv(3);
linv(4);
linv(-1);
linv(-2);
linv(-3);
linv(-4);

label("$t_1$",5vu,vu,heavygreen);
label("$t_2$",5vv,vv,heavygreen);

draw(T*H,blue);
draw(T*HH,blue);
	
xaxis("$x$",-(T*h(-l)).x,(T*h(-l)).x,red,RightTicks(new real[]{-4,-2,2,4}));
yaxis("$y$",-(T*h(l)).y,(T*h(l)).y,red,LeftTicks(new real[]{-4,-2,2,4}));