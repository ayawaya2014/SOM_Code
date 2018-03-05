% 作者：李欣 朱大奇
% 单位：上海海事大学水下机器人与智能系统实验室
% Date: 2008-11-30
% Modified: 2010-1-5, 2014-12-1, 2018-3-5

function [x,y] = angle(winnerT,weight)

dist = sum((winnerT - weight).^2);
dist = dist^.5;

T1 = (winnerT(1,1) - weight(1,1))/dist;
T2 = (winnerT(2,1) - weight(2,1))/dist;
% if((winnerT(1,1) - weight(1,1))<0)
%     x = -T1;
%     y = -T2;
% end
% if((winnerT(1,1) - weight(1,1))>=0)
     x = T1;
     y = T2;
% end
 

