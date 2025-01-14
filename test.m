function test()
    plot(1:10,1:10, 'r');
end

% Run the code section below to plot an image of a rose in jet
for i = 1:5
    disp('Starting up')
end
n=800;
p=pi;
[R,T]=ndgrid(linspace(0,1,n),linspace(-2,20*p,n));
x=1-(.5)*((5/4)*(1-mod(3.6*T,2*p)/p).^2-.25).^2;
U=2*exp(-T/(8*p));
L=sin(U);
H=cos(U);
y=1.99*(R.^2).*(1.2*R-1).^2.*L;
K=x.*(R.*L+y.*H);
X=K.*sin(T);
Y=K.*cos(T);
Z=x.*(R.*H-y.*L);
surf(X,Y,Z,'LineStyle','none')
grid,axis off;
colormap(jet)
% You should see the plot
for i = 1:12
    disp('Shutting down')
end
