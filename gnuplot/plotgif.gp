set terminal gif animate delay 25
set output 'foobar.gif'

set yrange [-0.04:0.08]
list=system("ls -1B cp-*.dat | sed 's/.dat//'")
do for [file in list] {

plotfile = sprintf("%s%s",file,'.dat')

plot plotfile w l lw 2 title "title" 
}
