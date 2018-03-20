%% Task Assignment Algorithm Based on SOM Neural Network Method
% ���ߣ�����
% ��λ���Ϻ����´�ѧˮ�»�����������ϵͳʵ����
% Date: 2009-11-30
% Modified: 2010-1-5, 2014-12-1, 2018-3-5

close all; 

% ����������Χ
xmin = [0; 0];  
xmax = [50;50]; 

% �趨��������
Step = 15;

% ����AUV��Ŀ���Ĳ���

Dmin = 1;
count = 0;

Target=[15 15; 20 20; 10 10; 5 7; 11 17; 22 9 ]';
Robot = [6 20 11 16 18 19 20 10 8 ;6 16 17 14 11.9 19 8 16 9];
Mat = size(Target); 
TarNum = Mat(1,2);

figure,
plot(Robot(1,:),Robot(2,:),'.r','MarkerSize',10);
axis([0 30 0 30]); 
hold on
plot(Target(1,:),Target(2,:),'.g','MarkerSize',50);
hold off

Weight{1} = Robot;
Target_a = Target;
B = 0.2; % �ɵ�����
r = 0.5; % �ɵ�����
w = 1;
temp = -1;
tt = 1;

% ��ѭ��
for t = 1:Step
    for ii=1:TarNum 
       % ������벢����
       [Dist{t}(ii),ind(ii),distn] =  somdist(Target_a(:,ii),Weight{w}); 
     
       Nk = ii;
       Nm = ind(Nk); 
       winnerR = Weight{w}(:,Nm); 
       winnerT = Target_a(:,Nk);

       if(Dist{t}(ii) <= 0.1)
           temp(tt) = ii;
           tt = tt+1;
       end
       
       flag = 1;
       for zz = 1:tt-1
           if(ii == temp(zz))
               flag = 0;
           end
       end
       
       if(flag == 1)
           % ��ʤ��Ԫ�������
           Neigh{w} = NeighborFunction(Weight{w},winnerR,r,t); 
           Weight{w+1} = updateWeight(Weight{w},B,Neigh{w},distn,winnerT,Dist{t}(ii));
           w = w + 1;
       end 
    end
   
   count = count +1;
   if(count == 1)
   figure; 
   plot(Target(1,:),Target(2,:),'.g','MarkerSize',50);
   hold on
   plot(Weight{w}(1,:),Weight{w}(2,:),'.r','MarkerSize',10);
   axis([0 30 0 30]); 
  
   hold off
   count = 0;
   pause(0.2)
   end
   
end
   
   
