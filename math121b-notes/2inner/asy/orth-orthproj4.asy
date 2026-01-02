//comment out 1st line if want webgl
if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="html";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\def\vy{\mathbf y}
\def\vw{\mathbf w}
\def\vn{\mathbf n}
");
import graph;
import graph3;

size(0,110);

triple a=(1,0,0);
triple b=(0,2,1);
triple u=unit(cross(a,b));

currentprojection=perspective(3,-2,1);

triple x=3a+2b+5*u;

triple proj(triple x){return dot(u,x)*u;}

triple c=x-proj(x);
triple d=proj(x);

triple P(pair t) {return t.x*a+t.y*b;}

draw(-0.4*unit(b)--0.4*unit(-b)+0.4*unit(u)--0.4*unit(u));
draw(c-0.4*unit(c)--c-0.4*unit(c)+0.4*unit(proj(x))--c+0.4*unit(proj(x)));
draw(c+0.4*unit(3b-c)--c+0.4*unit(3b-c)+0.4*unit(u)--c+0.4*unit(u));

surface p=surface(P,(-1,-1),(4,4),5);
draw(p,meshpen=black+linewidth(0.1),blue+opacity(0.5));

draw(-2u--O,red);
draw(Label("$W^\perp$",Relative(0.9)),-u--6.5u,red);

draw(Label("$\vy$",align=u),O--x,Arrow3);
draw(x--3b,orange+dashed);
draw(c--3b,dashed);
draw(Label("$\vw$",align=u),O--3b,orange,Arrow3);
draw(Label("$\pi_W(\vy)$",align=-u),O--c,blue,Arrow3);
draw(c--x,blue+dashed);


label("$W$",2a-u,blue);

