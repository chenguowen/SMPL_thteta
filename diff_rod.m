function matrix = diff_rod(vec , i , delta_rank)
delta = eps*10^delta_rank ;
vec1 = vec ;
vec2 = vec ;
vec1(i) = vec(i) - delta ;
vec2(i) = vec(i) + delta ;
matrix = (Rodrigues2Rotation(vec2) - Rodrigues2Rotation(vec1) ) / (delta*2.0) ; %
end