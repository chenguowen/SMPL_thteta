function matrix = deriviive( vec , i )
matrix_l = Jaccobi_l(vec) ; 
vec_l = matrix_l(:,i) ; 
matrix =  skew_matrix(vec_l) * Rodrigues2Rotation( vec ) ; %%  

function skew_mat = skew_matrix(vec_n)
skew_mat=[     0        -vec_n(3)    vec_n(2) ;
            vec_n(3)        0       -vec_n(1) ;
           -vec_n(2)     vec_n(1)      0      ];
       
function J_l = Jaccobi_l(vec)
theta  = norm(vec);
vec_n  = vec / theta ;

rx=[     0        -vec_n(3)    vec_n(2) ;
      vec_n(3)        0       -vec_n(1) ;
     -vec_n(2)     vec_n(1)      0      ];

J_l = sin(theta)/theta*eye(3)+( 1-sin(theta)/theta )*(vec_n*vec_n') + (1-cos(theta))/theta * rx ;
% J_l = inv(J_l) ; 


function matrix = i_matrix(i)
if i ==1
        matrix=[ 0  0  0 ;
                 0  0  -1 ;
                 0  1  0];
else
    if i==2
        matrix=[ 0   0  1;
                 0   0  0;
                -1   0  0];
    else
        
        matrix=[ 0  -1  0 ;
                1   0  0 ;
                0   0  0] ; 
    end
    
end



% function matrix = deriviive( vec , i )
% matrix = Jaccobi_l(vec)* i_matrix(i) * Rodrigues2Rotation( vec ) ; %% 
% 
% function J_l = Jaccobi_l(vec)
% theta  = norm(vec);
% vec_n  = vec / theta ;
% 
% rx=[     0        -vec_n(3)    vec_n(2) ;
%       vec_n(3)        0       -vec_n(1) ;
%      -vec_n(2)     vec_n(1)      0      ];
% 
% J_l = sin(theta)/theta*eye(3)+( 1-sin(theta)/theta )*(vec_n*vec_n') + (1-cos(theta))/theta * rx ;
% % J_l = inv(J_l) ; 
% 
% 
% function matrix = i_matrix(i)
% if i ==1
%         matrix=[ 0  0  0 ;
%                  0  0  -1 ;
%                  0  1  0];
% else
%     if i==2
%         matrix=[ 0   0  1;
%                  0   0  0;
%                 -1   0  0];
%     else
%         
%         matrix=[ 0  -1  0 ;
%                 1   0  0 ;
%                 0   0  0] ; 
%     end
%     
% end
% 
% 
