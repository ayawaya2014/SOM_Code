function neigh = NeighborFunction(weight,winner,r,t)

% 作者：李欣
% 单位：上海海事大学水下机器人与智能系统实验室
% Date: 2008-11-30
% Modified: 2010-1-6, 2014-12-1, 2018-3-5
% Shanghai, China 

G = 5; % 可调整参数
a = 0.1;
mat = size(weight);
n = mat(1,2);
dist = distfunction_Neigh(weight,winner);
neigh = 0 * ones(1,n);
for i = 1:n
    if(dist(i) >= r)
        neigh(i) = 0;
    end
    if(dist(i) < r)
        neigh(i) = exp(-dist(i)/((1-a) * G));
    end
end
