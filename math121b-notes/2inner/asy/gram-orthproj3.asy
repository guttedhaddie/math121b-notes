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
\def\vw{\mathbf w}
\def\vu{\mathbf u}
\def\vn{\mathbf n}
");
import graph;
import graph3;
import solids;

size(0,130);

triple a=(1,0,0);
triple b=(0,2,1);
triple u=unit(cross(a,b));

currentprojection=perspective(2,-2,1);

triple x=3a+2b+5*u;

triple proj(triple x){return dot(u,x)*u;}

triple c=x-proj(x);
triple d=proj(x);

triple P(pair t) {return t.x*a+t.y*b;}

draw(0.4*unit(d)--0.4*unit(d)+0.4*unit(c)--0.4*unit(c));
draw(c-0.4*unit(c)--c-0.4*unit(c)+0.4*unit(proj(x))--c+0.4*unit(proj(x)));
draw(d-0.4*unit(d)--d-0.4*unit(d)+0.4*unit(c)--d+0.4*unit(c));

surface p=surface(P,(-1,-1),(4,4),5);
draw(p,meshpen=black+linewidth(0.1),blue+opacity(0.5));

draw(-2u--O,red);
draw(Label("$U^\perp$",Relative(0.9)),proj(x)--6.5u,red);

draw("$\vx$",O--x,Arrow3);
draw(c--x,red+0.5green+dashed);
draw(Label("$\vw$",align=-0.4c),O--proj(x),red+0.5green,Arrow3);
draw(Label("$\vu$",align=-u),O--c,blue+0.5green,Arrow3);
draw(proj(x)--x,blue+0.5green+dashed);


label("$U$",a-2u,blue);

