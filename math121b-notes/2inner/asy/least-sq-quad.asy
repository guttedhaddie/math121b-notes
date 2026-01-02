settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(220);

pair[] data={(0,1),(1,1),(2,0),(3,2),(4,2)};

int m=data.length;

pair y(real t){return (t,(15t^2-39t+72)/70);}

draw(graph(y,-0.3,4.3),blue);

for(int i=0; i<m; ++i){
	draw(y(data[i].x)--data[i],heavygreen);
	dot(data[i]);
	}
	
xaxis("$t$",0,4.5,red,RightTicks(new real[]{0,1,2,3,4,5}));
yaxis("$y$",0,2.6,red,RightTicks(new real[]{0,1,2,3,4,5}));

write(y(4.3));