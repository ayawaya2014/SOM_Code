function dist = distfunction_Neigh(Weight,winner) 

% 作者：李欣
% 单位：上海海事大学水下机器人与智能系统实验室
% Date: 2009-11-30
% Modified: 2010-1-6, 2014-12-1, 2018-3-5

[m,n] = size(Weight);
dist = winner*ones(1,n) - Weight; 
dist = sum(dist.^2);
