settings.tex="lualatex";
defaultpen(fontsize(11pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage[otfmath,theoremfont,trueslanted,largesc]{newpx}
\setmathfont{TeX Gyre Pagella Math}
%\everydisplay{\Umathoperatorsize\displaystyle=4.5ex}
\usepackage[svgnames]{xcolor}
\def\rT{\mathrm T}
\def\cN{\mathcal N}
\def\cR{\mathcal R}
\def\Span{\operatorname{Span}}
\def\V#1{\mathbf{#1}}
\def\vv{\V{v}}
\def\vw{\V{w}}
\def\lst#1#2{{#1}_1,\ldots,{#1}_{#2}}
\def\vect#1#2{\lst{\V{#1}}{#2}}
");
import graph;

//size(240);


label("$\begin{array}{c@{\ }c@{\ }c@{\ }c@{\ }c@{\quad}c}
	V
	&
	=
	&
	\underbrace{\Span\{\vect vr\}}_{\cN(\rT)^\perp=\cR(\rT^\dag)}
	&
	\oplus
	&
	\underbrace{\Span\{\vv_{r+1},\ldots,\vv_n\}}_{\cN(\rT)=\cR(\rT^\dag)^\perp}
	&
	\{\V0_V\}
	\\[85pt]
	W
	&
	=
	&
	\overbrace{\Span\{\vect wr\}}^{\cR(\rT)=\cN(\rT^\dag)^\perp} 
	&
	\oplus
	&
	\overbrace{\Span\{\vw_{r+1},\ldots,\vw_m\}}^{\cR(\rT)^\perp=\cN(\rT^\dag)}
	&
	\{\V0_W\}
\end{array}$",(0,0));


draw(Label("$\rT^\dag$",align=W,fontsize(8)+red),(-123,-45)--(-123,45),red,Arrow(SimpleHead));
draw(Label("$\rT$",align=E,fontsize(8)+blue),(-119,45)--(-119,-45),blue,Arrow(SimpleHead));

draw((-62,-32)--(-62,32),red,Arrow(SimpleHead));
draw((-58,32)--(-58,-32),blue,Arrow(SimpleHead));

fill(box((-65,-8),(-55,8)),white);
label("bijection",(-60,0));

draw((60,-32)--(110,43),red,Arrow(SimpleHead));
draw((60,32)--(110,-43),blue,Arrow(SimpleHead));
