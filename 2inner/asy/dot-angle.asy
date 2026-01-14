settings.tex="pdflatex";
defaultpen(fontsize(11pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

pair x=(4,1);
pair y=(1.5,2);

draw("$\mathbf x$",(0,0)--x,Arrow);
draw("$\mathbf y$",(0,0)--y,NW,Arrow);

draw("$\theta$",arc((0,0),0.5*unit(x),0.5*unit(y)),ArcArrow);

