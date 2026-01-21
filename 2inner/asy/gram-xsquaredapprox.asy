settings.tex="pdflatex";
defaultpen(fontsize(11pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}

");
import graph;

size(140);

real f(real x){return x^2;}
path p=graph(f,0,1);
draw(p,blue+linewidth(1));

draw((0,-1/6)--(1,5/6),heavygreen+linewidth(1));

	
xaxis(0,1,red,RightTicks(new real[]{1},new real[]{0.5}));
yaxis("$y$",-1/6,1,red,LeftTicks(new real[]{0,1},new real[]{0.5}));

labelx("$x$",1.1,red);
