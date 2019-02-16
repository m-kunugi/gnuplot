if (exist("i")==0 || i<0) i=0 #変数の初期化
title(i) = sprintf("t = %d ",1977+(i+8)/12)  #タイトル名
unset label 
set label title(i) font 'ヒラギノ丸ゴ ProN W4, 24' at 10,-40,20
set label sprintf("提供：NASA") font 'ヒラギノ丸ゴ ProN W4, 12' at -20,60,-10
set label sprintf("パイオニア10号・11号、ボイジャー1号・2号の位置\n1977年〜1990年") font 'ヒラギノ丸ゴ ProN W4, 30' at 10,-35,37

set label sprintf("パイオニア10号→\n(打ち上げ 1972年3月2日)\n(木星通過 1973年12月4日)\n\n\
") font 'ヒラギノ丸ゴ ProN W4, 12' at 25,25,0
set label sprintf("パイオニア11号↓\n(打ち上げ 1973年4月6日)\n(木星通過 1974年12月4日)\n土星通過 1979年9月1日\n\
") font 'ヒラギノ丸ゴ ProN W4, 12' at 0,-20,12
set label sprintf("ボイジャー1号←\n打ち上げ 1977年9月5日\n木星通過 1979年3月5日\n土星通過 1980年11月12日\n\
") font 'ヒラギノ丸ゴ ProN W4, 12' at -23,-60,15
set label sprintf("ボイジャー2号↑\n打ち上げ 1977年8月20日\n木星通過 1979年7月9日\n土星通過 1981年8月25日\n天王星通過 1986年1月24日\n海王星通過 1989年8月25日\n\
") font 'ヒラギノ丸ゴ ProN W4, 12' at 15,-55,-7

set label point pt 7 ps 2 lc rgb "orange" at 0,0,0

set datafile separator ","
splot "data/Pioneer10.csv" every ::24::24+i using 3:4:5 lc rgb "violet" notitle with lines\
    ,"data/Pioneer10.csv" every ::24+i::24+i using 3:4:5 pt 11 lc rgb "violet" title "Pioneer10" with points\
    ,"data/Pioneer11.csv" every ::24::24+i using 3:4:5 lc rgb "grey" notitle with lines\
    ,"data/Pioneer11.csv" every ::24+i::24+i using 3:4:5 pt 11 lc rgb "grey" title "Pioneer11" with points\
    ,"data/Voyager1.csv" every ::24::24+i using 3:4:5 lc rgb "black" notitle with lines\
    ,"data/Voyager1.csv" every ::24+i::24+i using 3:4:5 pt 11 lc rgb "black" title "Voyager1" with points\
    ,"data/Voyager2.csv" every ::24::24+i using 3:4:5 lc rgb "gold" notitle with lines\
    ,"data/Voyager2.csv" every ::24+i::24+i using 3:4:5 pt 11 lc rgb "gold" title "Voyager2" with points\
    \
    ,"data/Jupiter.csv" every ::24::24+i using 3:4:5 lc rgb "orange" notitle with lines\
    ,"data/Jupiter.csv" every ::24+i::24+i using 3:4:5 pt 7 ps 1.5 lc rgb "orange" title "Jupiter" with points\
    ,"data/Saturn.csv" every ::24::24+i using 3:4:5 lc rgb "brown" notitle with lines\
    ,"data/Saturn.csv" every ::24+i::24+i using 3:4:5 pt 7 ps 1.5 lc rgb "brown" title "Saturn" with points\
    ,"data/Uranus.csv" every ::24::24+i using 3:4:5 lc rgb "aquamarine" notitle with lines\
    ,"data/Uranus.csv" every ::24+i::24+i using 3:4:5 pt 7 ps 1.5 lc rgb "aquamarine" title "Uranus" with points\
    ,"data/Neptune.csv" every ::24::24+i using 3:4:5 lc rgb "blue" notitle with lines\
    ,"data/Neptune.csv" every ::24+i::24+i using 3:4:5 pt 7 ps 1.5 lc rgb "blue" title "Neptune" with points\
    ,"data/Pluto.csv" every ::24::24+i using 3:4:5 lc rgb "beige" notitle with lines\
    ,"data/Pluto.csv" every ::24+i::24+i using 3:4:5 pt 7 ps 1.5 lc rgb "beige" title "(Pluto)" with points\

if (i<159)  i=i+1; reread #504