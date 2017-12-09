A=input('Enter A matrix');
Z=input('Enter Z matrix');
s=[];
t=[];
weights=[];% 1 for L -1 for C 0 For R
Bno=[];% Branch no.
for x=1:size(A,2)
    s=[s find(A(:,x)==1)];
    t=[t find(A(:,x)==-1)];
    Bno=[Bno x];
    if(Z(x,x)==conj(Z(x,x)))
        weights=[weights 0];
    else
        if (Z(x,x)/i < 0)
            weights=[weights -1];
        else
            weights=[weights 1];
        end;
    end;
end
S.EndNodes=[s' t'];
S.Weight=weights'; 
S.Bno=Bno';
Edges=struct2table(S);
G=graph(Edges);% line 21 to 25 formation of graph object
p = plot(G,'EdgeLabel',G.Edges.Weight,'Layout','layered');
T=minspantree(G,'Method','sparse');%finding proper tree
highlight(p,T);
Fmat;

    