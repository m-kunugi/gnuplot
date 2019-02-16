set terminal aqua font 'ヒラギノ丸ゴ ProN W4, 16'
set zeroaxis
set ticslevel 0 # z軸を底面にくっつける
set xlabel "x [au]" font 'ヒラギノ丸ゴ ProN W4, 12'
set ylabel "y [au]" font 'ヒラギノ丸ゴ ProN W4, 12'
set zlabel "z [au]" font 'ヒラギノ丸ゴ ProN W4, 12'
set xrange [-20:15]
set yrange [-40:60]
set zrange [-5:25]
set tics font "ヒラギノ丸ゴ ProN W4, 12"
set view 110, 150, 1, 1 # 視点を調整
set key left

set terminal gif animate delay 10 optimize size 1280, 1024
set output "probe.gif"

load "probeplot.plt"
i = 0