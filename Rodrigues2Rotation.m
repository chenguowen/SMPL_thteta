%{
%     �޵����˹�任    %     ���룺1*3���޵����˹����  %     ���3*3����  Ϊ��ת����
%   �ο�����:
%   ����΢����http://blog.sina.com.cn/s/blog_5fb3f125010100hp.html
%   CSDN�ռ䣺http://blog.csdn.net/bugrunner/article/details/7359100
%   ά���ٿƣ�http://en.wikipedia.org/wiki/Rodrigues'_rotation_formula  
%}

function Rotation_matrix=Rodrigues2Rotation(rod)
r = rod;
theta=norm(r);
% r = r/theta ; 
%% 
% rx=[  0    -r(3)  r(2) ; 
%      r(3)    0   -r(1) ;
%     -r(2)   r(1)   0  ]; %% 

% Rotation_matrix = eye(3,3)+sin(theta)/theta*rx+(1-cos(theta))/theta^2*rx*rx;

one_r = r./theta;
Rotation_matrix=cos(theta)*eye(3,3)+(1-cos(theta))*(one_r*one_r')+sin(theta)*[0 -one_r(3)  one_r(2);one_r(3) 0 -one_r(1); -one_r(2) one_r(1) 0] ; 
% �������ְ취Ҳ���ԣ�
%{
rx=[0 -r(3)  r(2);r(3) 0 -r(1); -r(2) r(1) 0];
R2=eye(3,3)+sin(theta)/theta*rx+(1-cos(theta))/theta^2*rx*rx;
(R-R')/2-sin(theta)*[0   -one_r(3)  one_r(2);one_r(3)  0  -one_r(1);-one_r(2) one_r(1)   0 ]
 Rx=(R-R')/2;
%}