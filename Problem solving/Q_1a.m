%1.(a) Plot a Graph using Table 1. (Scatter Plots)

clc

x=[8;
   36;
   65.75;
   95.5;
   125.25;
   155;
   184.75]

y=[ 227.04;
   1004.597;
   1902.249;
   2799.901;
   3697.553;
   4595.205;
   5492.857]

   scatter(x,y)
   
   xlabel('t(s)');
   ylabel('v(t)');