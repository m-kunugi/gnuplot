if (exist("i")==0 || i<0) i=0 #変数の初期化
title(i) = sprintf("t = %d [day]",i)  #タイトル名
unset label 
set label title(i) font 'ヒラギノ丸ゴ ProN W4, 12' at 1.2,-1.2,0
set label sprintf("提供：JAXA") font 'ヒラギノ丸ゴ ProN W4, 8' at 1.5,-1.5,-0.4
set label sprintf("「はやぶさ２」、地球、リュウグウの位置 \n ※z軸は10倍にしてある。") font 'ヒラギノ丸ゴ ProN W4, 12' at -1.9,1.9,0.4

splot "Trajectory_20180226.txt" every ::57::57+i using 3:4:5 lc rgb "yellow" notitle with lines\
    ,"Trajectory_20180226.txt" every ::57::57+i using 6:7:8 lc rgb "blue" notitle with lines\
    ,"Trajectory_20180226.txt" every ::57::57+i using 9:10:11 lc rgb "grey" notitle with lines\
    ,"Trajectory_20180226.txt" every ::57+i::57+i using 3:4:5 pt 5 lc rgb "yellow" title "Hayabusa2" with points\
    ,"Trajectory_20180226.txt" every ::57+i::57+i using 6:7:8 pt 7 lc rgb "blue" title "Earth" with points\
    ,"Trajectory_20180226.txt" every ::57+i::57+i using 9:10:11 pt 13 lc rgb "grey" title "Ryugu (1999 JU3)" with points

if (i<1832)  i=i+1; reread