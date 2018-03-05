function weight_new = updateWeight(weight,B,Neigh,dist,winnerT,Dmin)

% ���ߣ����� ����� ����
% ��λ���Ϻ����´�ѧˮ�»�����������ϵͳʵ����
% Date: 2008-11-30
% Modified: 2010-1-5, 2014-12-1, 2018-3-5

n = size(weight);
i = n(1,2);
eta = 0.3;
for j = 1:i
    [angle_x,angle_y] = angle(winnerT,weight(:,j));
    if(dist(j) <= eta)
        weight_new(:,j) = winnerT;
    else
        weight_new(:,j) = weight(:,j) + [B*Neigh(j)*dist(j)*angle_x;B*Neigh(j)*dist(j)*angle_y];
    end
end
