1;

% plot two vectors v1 starting at origin (0, 0) and v2 is added to v1.
% plot with various multipliers c1 and c2
% plot a dashed line showing the result
% (c1 * v1) + (c2 * v2)

function plot_R2_linear_comb (v1, v2, c1=1, c2=1)

  L1_start = [0 0]; % plot v1 from origin
  L1_end   = c1 * v1;

  disp(L1_end);

  plot([L1_start(1,1), L1_end(1,1)], [L1_start(1,2), L1_end(1,2)], linestyle="-");

  L2_start = L1_end;
  L2_end   = L2_start + c2 * v2;

  plot([L2_start(1,1), L2_end(1,1)], [L2_start(1,2), L2_end(1,2)], linestyle="-");

  L3_start = [0 0];
  L3_end   = L3_start + c1 * v1 + c2 * v2;

  plot([L3_start(1,1), L3_end(1,1)], [L3_start(1,2), L3_end(1,2)], linestyle="--");

endfunction

%%%%%%%%%

hf = figure();

% create two vectors to add together

v1 = [ 1 3 ];  
v2 = [ 3 4 ];

newplot();
hold on;

plot_R2_linear_comb(v1, v2, 1, 1);
plot_R2_linear_comb(v1, v2, 3, 1);
plot_R2_linear_comb(v1, v2, -1, -1);
plot_R2_linear_comb(v1, v2, -1/2, 4);
plot_R2_linear_comb(v1, v2, -3, 4);

hold off;

print(hf, "~/Desktop/2d_lin_comb_space.png", "-dpng")
