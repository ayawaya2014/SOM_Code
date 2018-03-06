function [J,ind,distn] = somdist(x,Robot)

% 作者：李欣 朱大奇
% 单位：上海海事大学水下机器人与智能系统实验室
% Date: 2009-11-30
% Modified: 2010-1-5, 2014-12-1, 2018-3-5
% Shanghai, China 

[m,n] = size(Robot);
dist = x*ones(1,n) - Robot;
dist = sum(dist.^2);
distn = dist.^0.5;
[J,ind] = min(distn);
