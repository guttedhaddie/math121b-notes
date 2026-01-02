settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\def\rT{\mathrm{T}}
\def\cR{\mathcal{R}}
\def\cN{\mathcal{N}}
\def\V0{\mathbf{0}}
");
import graph;

size(180);

pair l=(-1,1);
pair r=(1,1);

label("$\begin{matrix} V\\[8pt]\cN(\rT)^\perp\\\bigoplus\ \ \\\cN(\rT)\ \ \\[8pt]\{\V0_V\}\ \ \end{matrix}$",l);

label("$\begin{matrix} W\\[8pt]\cR(\rT)\ \ \\\bigoplus\ \ \\\cR(\rT)^\perp\\[8pt]\{\V0_W\}\ \ \end{matrix}$",r);

draw(Label("$\rT$",align=N),l+(0.4,0.23)--r+(-0.4,0.23),red,Arrow);
draw(Label("$\rT^\dag$",align=S),r+(-0.4,0.17)--l+(0.4,0.17),blue,Arrow);
draw(l+(0.25,-0.22)--r+(-0.35,-0.5),red,Arrow);
draw(r+(-0.35,-0.22)--l+(0.25,-0.5),blue,Arrow);
