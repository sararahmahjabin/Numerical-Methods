
% X = 4x^2-5x+5=0
% Y = 5x^2+4x+2=0

X=[];
Y=[];


for N=0:9
  S = 4*N*N-5*N+5;
  X = [X,S];
  
  M= 5*N*N+4*N+2;
  Y = [Y,M];
  
end

display(X)
display(Y)
plot(X, Y);
xlabel('X');
ylabel('Y');