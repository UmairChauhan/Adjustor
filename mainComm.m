function [ commNbr ] = mainComm( node1, node2, size )
%MAINCOMM Summary of this function goes here
%   Detailed explanation goes here


% Algorithm running time
tic;

% 8 Nodes graph
rList = [2, 3, 12, 13, 14, 21, 30, 38, 40, 43, 47, 49, 52, 56, 62];
cList = [7, 9, 17, 22, 26, 31, 34, 35, 42, 44, 45, 48, 54, 61, 63];

[commNbr] = CommonNeighbor( rList, cList, node1, node2, size );

disp(commNbr);

% Total Elapsed time in seconds
timeElapsed = toc

end

