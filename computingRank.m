function [ rank ] = computingRank( nodeId_2, nodeName, outDegree, rank )
%CALCULATIONS Summary of this function goes here
%   Detailed explanation goes here
n = 1;

for i = nodeName
    tempRank = (rank(nodeId_2)/(1/outDegree(n)));
    rank(i) = (rank(i) + tempRank);
    n = n+1;

end
end