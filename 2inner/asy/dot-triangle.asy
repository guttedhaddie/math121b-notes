settings.tex="pdflatex";
defaultpen(fontsize(11pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(110);

pair xy=(4,1);
pair x=(2.5,2);

draw("$\mathbf x+\mathbf y$",(0,0)--xy,Arrow);
draw("$\mathbf x$",(0,0)--x,NW,Arrow);
draw("$\mathbf y$",x--xy,NE,Arrow);


