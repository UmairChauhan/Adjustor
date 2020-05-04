function [ rank ] = main( size )
%MAIN Summary of this function goes here
%   Detailed explanation goes here


% R List code distributed
% spmd
%  D = codistributed(A);
%  list = find(D);
% end


% Algorithm running time
tic

% 8 Nodes graph
rList = [2, 3, 12, 13, 14, 21, 30, 38, 40, 43, 47, 49, 52, 56, 62];
cList = [7, 9, 17, 22, 26, 31, 34, 35, 42, 44, 45, 48, 54, 61, 63];

% 4 Nodes graph
%  rList = [2, 3, 8, 9, 10, 12, 15];
%  cList = [3, 5, 7, 9, 12, 14, 15];



initialRank = 1/size;

 for i = (1:size)
   rank(i) = initialRank;
 end

for nodeId_1 = (1:size)
    nodeId_2 = nodeId_1;
    [rank] = Q1_Q2(nodeId_1, nodeId_2, size, rList, cList, rank);
end

% Total Elapsed time in seconds
timeElapsed = toc

end