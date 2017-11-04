A=input('Enter A matrix');
Z=input('Enter Z matrix');
s=[];
t=[];
weights=[];
for x=1:size(A,2)
    s=[s find(A(:,x)==1)];
    t=[t find(A(:,x)==-1)];
    if(Z(x,x)==conj(Z(x,x)))
        weights=[weights 0];
    else
        if (Z(x,x)/i < 0)
            weights=[weights -1];
        else
            weights=[weights 1];
        end;
    end;
end;
G=graph(s,t,weights);
p = plot(G,'EdgeLabel',G.Edges.Weight,'Layout','layered');
t=minspantree(G,'Method','sparse');
highlight(p,t);