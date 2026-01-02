settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

pair x=(2,1);
pair y=(1,3);

draw(Label("$X$",Relative(0.9)),-0.3x--1.5x);
draw(Label("$Y$",align=NW,Relative(0.9)),-0.3y--1.5y);

draw("$\mathbf v$",(0,0)--x+y,Arrow);
draw(x--x+y,heavygreen+dashed);
draw(y--x+y,blue+dashed);
draw("$\mathbf x=\mathrm T(\mathbf v)$",(0,0)--x,blue,Arrow);
draw("$\mathbf y$",(0,0)--y,NW,heavygreen,Arrow);


