t=table2array(T.Edges(:,2:3));
t2=table2array(T.Edges);
L=rmedge(G,t2(:,1)',t2(:,2)');
l=table2array(L.Edges(:,2:3));
% 
% bl=-(At-1 Al)'
A=A(1:size(A,1)-1,:)
l=sortrows(l,1)
t=sortrows(t,1)
At=A(:, t(:,2)')
Al=A(:,l(:,2)')
F=[-(inv(At)*Al)']
% if 
%     
% Frc
% Frg
% Flc
% Flg
% Flt
        