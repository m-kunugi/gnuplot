set terminal aqua font 'ヒラギノ丸ゴ ProN W4, 8'
set zeroaxis
set ticslevel 0 # z軸を底面にくっつける
set xlabel "x [au]" font 'ヒラギノ丸ゴ ProN W4, 8';set ylabel "y [au]" font 'ヒラギノ丸ゴ ProN W4, 8';set zlabel "z [au]" font 'ヒラギノ丸ゴ ProN W4, 8';
set xrange [-1.5:1.5];set yrange [-1.5:1.5];set zrange [-0.15:0.15]
set view 45, 300, 1, 1 # 視点を調整

set terminal gif animate delay 1 optimize size 640, 480
set output "haya2.gif"

load "haya2plot.plt"
i = 0