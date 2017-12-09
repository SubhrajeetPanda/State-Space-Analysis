
C=[-Fsc' eye(c)]*Z([l(1:s,2)' t(1:c,2)'],[l(1:s,2)' t(1:c,2)'])*[-Fsc;eye(c)];
L=[eye(ll) Flt]*Z([l(s+r+1:s+r+ll,2)' t(c+g+1:c+g+tau,2)'],[l(s+r+1:s+r+ll,2)' t(c+g+1:c+g+tau,2)'])*[eye(ll);Flt'];
R=Z(l(s+1:s+r,2)',l(s+1:s+r,2)')+Frg*Z(t(c+1:c+g,2)',t(c+1:c+g,2)')*Frg';
G=inv(Z(t(c+1:c+g,2)',t(c+1:c+g,2)'))+Frg'*inv(Z(l(s+1:s+r,2)',l(s+1:s+r,2)'))*Frg;


Y=Frc'*inv(R)*Frc;
Zi=Flg*inv(G)*Flg';
K=Flc'-Frc'*inv(R)*Frg*Z(t(c+1:c+g,2)',t(c+1:c+g,2)')*Flg';

Af=[-inv(C)*Y inv(C)*K;
    -inv(L)*K' -inv(L)*Zi];
x0=[];
for i=1:c
    a=input(sprintf('Enter intial value of voltage in branch %d ',t(i,2)));
    x0=[x0 a];
end
for i=1:ll
    a=input(sprintf('Enter inital value of current in branch %d ',l(s+r+i,2)));
    x0=[x0 a];
end
[t x]=ode45('check',[0 10],x0,[],Af);
