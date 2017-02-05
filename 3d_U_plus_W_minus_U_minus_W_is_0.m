% Draw 3d arrow from x0,y0,z0 to x1,y1,z1
%
% parameters:
%    V0 = [ x0 y0 z0 ]
%    V1 = [ x1 y1 z1 ]
%
% returns:
%    V0 + V1
%
function retval = quiver3_vect( V0, V1 )
  q = quiver3( V0(1), V0(2), V0(3), V1(1), V1(2), V1(3) );
  retval = V0 + V1;
endfunction

h = figure();

newplot();
mesh(20,20,20);
hold on;

O = [ 0 0 0 ];
U = [ 1 2 3 ];
W = [ 7 8 9 ];

nextstart = O;
nextstart = quiver3_vect( nextstart, + U );
nextstart = quiver3_vect( nextstart, + W );
nextstart = quiver3_vect( nextstart, - U );
nextstart = quiver3_vect( nextstart, - W );

print(h, './3d_U_plus_W_minus_U_minus_W_is_0', '-dpng')

hold off;
