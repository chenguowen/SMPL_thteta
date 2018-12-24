% test
error = ones(30,1) *10 ;
% for i = -5:20
for i = 8:16
    mat = deriviive( [1 2 3]' , 2 ) - diff_rod( [1 2 3]' , 2 ,i) ;
    error(i+6) = sum( abs(mat(:)) );
    error(i+6)
end

figure 
title('扰动步长与数值计算误差')
plot( -5:24,log(error) ) ;  xlabel('log(步长/eps)') ;ylabel('log(计算误差)')
title('扰动步长与数值计算误差')
