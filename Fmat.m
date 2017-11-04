t=table2array(T.Edges(:,2:3));
t2=table2array(T.Edges);
L=rmedge(G,t2(:,1)',t2(:,2)');
l=table2array(L.Edges(:,2:3));
% 
% -(At-1 Al)'

l=sortrows(l,1);
t=sortrows(t,1);
At=A(:, t(:,2)');
Al=A(:,l(:,2)');
F=[eye(size(l,1)), -round((pinv(At)*Al)',0)]

        