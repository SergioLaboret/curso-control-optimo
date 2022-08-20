R=4.7e3
L=10e-4
Cc=100e-9
A=[-R/L -1/L; 1/Cc 0];B=[1/L;0];C=[R 0];D=0
h=2e-8 %paso << cte mas chica 2e-9
T=2e-3 %periodo
Tf=2.5*T % final
X=[0;0]
t=[0]
n=1
U=[0]
while t(n)<Tf;
    
    u=sign(sin(2*pi*t(n)/T))
    x=X(:,n)+A*X(:,n)*h+B*u*h;
    tn=t(n)+h;
    X=[X,x];
    t=[t,tn];
    U=[U,u];
    n=n+1;
       
end
    



 
    
