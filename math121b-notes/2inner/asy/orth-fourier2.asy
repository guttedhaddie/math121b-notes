settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}

");
import graph;

size(400,110,IgnoreAspect);

path p=(-pi,-1)--(0,-1);
path q=(0,1)--(pi,1);
draw(p,blue);
draw(q,blue);
draw(shift((-2pi,0))*q,blue);
draw(shift((2pi,0))*p,blue);

real f1(real x){return (4/pi)*sin(x);}
real f2(real x){return f1(x)+(4/(3*pi))*sin(3*x);}
real f3(real x){return f2(x)+(4/(5*pi))*sin(5*x);}
real f4(real x){return f3(x)+(4/(7*pi))*sin(7*x);}
real f5(real x){return f4(x)+(4/(9*pi))*sin(9*x);}
real f6(real x){return f5(x)+(4/(11*pi))*sin(11*x);}

int n=1000;

draw(graph(f6,-2pi,2pi,n),heavygreen);
	
xaxis("$x$",red);
yaxis("$y$",red,LeftTicks(new real[]{-1,1}));

xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$-\pi$",align=S),-pi,S,red);
xtick(Label("$-2\pi$",align=S),-2pi,S,red);