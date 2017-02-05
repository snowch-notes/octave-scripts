% Draw 3d arrow from x0,y0,z0 to x1,y1,z1
%
% parameters:
%    V = [ x0 x1; y0 y1; z0 z1 ]
%
% 
function quiver3_vect( V )
  quiver3( V(1, 1), V(2, 1), V(3, 1), V(1, 2), V(2, 2), V(3, 2) )
endfunction

beg_pt = [0 0 0]';
fin_pt = [1 2 3]';

vect = horzcat( beg_pt, fin_pt );

% >> vect
% vect =
%
%   0   1
%   0   2
%   0   3

quiver3_vect( vect )
