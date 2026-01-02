settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}

");
import graph;

size(220);

path p=graph(exp,-1,1);
draw(p,blue);

real f0(real x){return 0.5*(exp(1)-exp(-1));}
real f1(real x){return f0(x)+3*exp(-1)*x;}
real f2(real x){return f1(x)+1.25*(exp(1)-7*exp(-1))*(3x^2-1);}

int n=1000;

draw(graph(f1,-1,1,n),purple);
draw(graph(f2,-1,1,n),heavygreen);
	
xaxis("$x$",red,RightTicks(new real[]{-1,0,1}));
yaxis("$y$",0,red,LeftTicks(new real[]{1,2}));
