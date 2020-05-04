function [rank] = Q1(nodeId_1, nodeId_2, size, rList, cList, rank)
%Q1 Summary of this function goes here

% "nodeID" means starting node
% "size" means total number of nodes
% "rank" will return as a ranked list of nodes

%   Detailed explanation goes here

% Q1 processing will start here

% Nodes
% rank(1,1) = 1;
% rank(2,1) = 2;
% rank(3,1) = 3;
% rank(4,1) = 4;
% rank(5,1) = 5;
% rank(6,1) = 6;
% rank(7,1) = 7;
% rank(8,1) = 8;

% Rank
% rank(1) = initialRank;
% rank(2) = initialRank;
% rank(3) = initialRank;
% rank(4) = initialRank;
% rank(5) = initialRank;
% rank(6) = initialRank;
% rank(7) = initialRank;
% rank(8) = initialRank;


% nodeId = 6;
% size = 8;

% cList = [7, 9, 17, 22, 26, 31, 34, 35, 42, 44, 45, 48, 54, 63];

Q1_E = nodeId_1*size;
Q1_S = Q1_E-size+1;

% disp(S);
% disp(E);

Q1_range = cList(cList >= Q1_S & cList <= Q1_E);

k = 1;
for i = Q1_range
nodeName(k) = (size - (Q1_E - i));
k = k+1;
end

disp(nodeName)


% Q2 processing will start here 

% rList = [2, 3, 12, 13, 14, 21, 30, 38, 40, 43, 47, 49, 52, 56, 62];

m = 1;
for i = nodeName

nodeId_1 = i;
Q2_E = nodeId_1*size;
Q2_S = Q2_E-size+1;

Q2_range = rList(rList >= Q2_S & rList <= Q2_E);
outDegree(m) = length(Q2_range);
m = m+1;
end

disp(outDegree);

% Populate Table

% for i = (1:size)
    rank = computingRank(nodeId_2, nodeName, outDegree, rank);
% end

%disp(rank);

end