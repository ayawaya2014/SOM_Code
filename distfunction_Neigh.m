function dist = distfunction_Neigh(Weight,winner) 

% ���ߣ�����
% ��λ���Ϻ����´�ѧˮ�»�����������ϵͳʵ����
% Date: 2009-11-30
% Modified: 2010-1-6, 2014-12-1, 2018-3-5

[m,n] = size(Weight);
dist = winner*ones(1,n) - Weight; 
dist = sum(dist.^2);
