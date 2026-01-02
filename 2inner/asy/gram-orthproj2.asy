if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\def\vx{\mathbf x}
\def\vv{\mathbf v}
\def\vu{\mathbf u}
\def\vn{\mathbf n}
");
import graph;

size(0,160);

pair u=unit((2,1));
pair v=unit((-1,2));
pair x=(6,7);

pair proj(pair y){return dot(u,y)*u;}

pair c=x-proj(x);
pair d=proj(x);
draw(0.4*unit(d)--0.4*unit(d)+0.4*unit(c)--0.4*unit(c));
draw(c-0.4*unit(c)--c-0.4*unit(c)+0.4*unit(proj(x))--c+0.4*unit(proj(x)));
draw(d-0.4*unit(d)--d-0.4*unit(d)+0.4*unit(c)--d+0.4*unit(c));

draw(-2u--(0,0),red);
draw(Label("$U$",Relative(0.9),red),proj(x)--10u,red);
draw(-1.5v--(0,0),blue);
draw(Label("$U^\perp$",Relative(0.9),blue),c--6v,blue);

draw("$\vx$",(0,0)--x,Arrow);
draw(c--x,red+0.5green+dashed);
draw(Label("$\pi_U(\vx)$",align=-v),(0,0)--proj(x),red+0.5green,Arrow);
draw(Label("$\pi_U^\perp(\vx)$",align=-u),(0,0)--c,blue+0.5green,Arrow);
draw(proj(x)--x,blue+0.5green+dashed);



