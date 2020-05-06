function [ commNbr ] = CommonNeighbor( rList, cList, node1, node2, size )
%COMMONNEIGHBOR Summary of this function goes here
%   Detailed explanation goes here

% Implementation will goes here soon!!!

% m = 1;
% for i = nodeName

% node1 = i;
node1_E = node1*size;
node1_S = node1_E-size+1;

n1_range = rList(rList >= node1_S & rList <= node1_E);
list_1 = length(n1_range);

k = 1;
for i = n1_range
nodeName_1(k) = (size - (node1_E - i));
k = k+1;
end

% m = m+1;
% end

disp(list_1);
disp(nodeName_1);


% node2 = i;
node2_E = node2*size;
node2_S = node2_E-size+1;

n2_range = rList(rList >= node2_S & rList <= node2_E);
list_2 = length(n2_range);

m = 1;
for i = n2_range
nodeName_2(m) = (size - (node2_E - i));
m = m+1;
end


disp(list_2);
disp(nodeName_2);

commNbr = intersect(nodeName_1, nodeName_2);


end

