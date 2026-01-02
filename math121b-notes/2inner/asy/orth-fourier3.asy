settings.prc=false;
settings.outformat="";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animate;

size(400,110,IgnoreAspect);

path p=(-pi,-1)--(0,-1);
path q=(0,1)--(pi,1);

typedef real realfcn(real);
realfcn F(real n){
	return new real(real x){return (4/(pi*(2*n-1)))*sin((2*n-1)*x);};
}

typedef real intfcn(real);
intfcn F(int n){
	return new real(real x){return (4/(pi*(2*n-1)))*sin((2*n-1)*x);};
}


real f1(real x){return F(1)(x);}
real f2(real x){return f1(x)+(4/(3*pi))*sin(3*x);}
real f3(real x){return f2(x)+(4/(5*pi))*sin(5*x);}
real f4(real x){return f3(x)+(4/(7*pi))*sin(7*x);}
real f5(real x){return f4(x)+(4/(9*pi))*sin(9*x);}
real f6(real x){return f5(x)+(4/(11*pi))*sin(11*x);}
real f7(real x){return f6(x)+(4/(13*pi))*sin(13*x);}
real f8(real x){return f7(x)+(4/(15*pi))*sin(15*x);}
real f9(real x){return f8(x)+(4/(17*pi))*sin(17*x);}
real f10(real x){return f9(x)+(4/(19*pi))*sin(19*x);}
real f11(real x){return f10(x)+(4/(21*pi))*sin(21*x);}
real f12(real x){return f11(x)+(4/(23*pi))*sin(23*x);}
real f13(real x){return f12(x)+(4/(25*pi))*sin(25*x);}
real f14(real x){return f13(x)+(4/(27*pi))*sin(27*x);}
real f15(real x){return f14(x)+(4/(29*pi))*sin(29*x);}
real f16(real x){return f15(x)+(4/(31*pi))*sin(31*x);}
real f17(real x){return f16(x)+(4/(33*pi))*sin(33*x);}
real f18(real x){return f17(x)+(4/(35*pi))*sin(35*x);}
real f19(real x){return f18(x)+(4/(37*pi))*sin(37*x);}
real f20(real x){return f19(x)+(4/(39*pi))*sin(39*x);}

int n=1000;

picture bk;

	draw(bk,p,blue);
	draw(bk,q,blue);
	draw(bk,shift((-2pi,0))*q,blue);
	draw(bk,shift((2pi,0))*p,blue);
	xaxis(bk,"$x$",red);
	yaxis(bk,"$y$",red,LeftTicks(new real[]{-1,1}));
	xtick(bk,Label("$\pi$",align=S),pi,S,red);
	xtick(bk,Label("$2\pi$",align=S),2pi,S,red);
	xtick(bk,Label("$-\pi$",align=S),-pi,S,red);
	xtick(bk,Label("$-2\pi$",align=S),-2pi,S,red);
	
	//draw(graph(f1,-2pi,2pi),heavygreen);
	
	//add(bk);
	

animation A;

save();
add(bk);
draw(graph(f1,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f2,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f3,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f4,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f5,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f6,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f7,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f8,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f9,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f10,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f11,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f12,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f13,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f14,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f15,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f16,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f17,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f18,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f19,-2pi,2pi,n),heavygreen);
A.add();
restore();

save();
add(bk);
draw(graph(f20,-2pi,2pi,n),heavygreen);
A.add();
restore();


label(A.pdf(multipage=false),fontsize(5));
