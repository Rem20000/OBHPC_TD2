set style data histogram 
set style histogram clustered
set boxwidth 0.9 relative 
set title "Comparaison de performances selon les flags du compilateur gcc"

set xlabel "les versions de dgemm"
set ylabel "MiB/s"

set xrange [0:8]


set style fill solid 0.25 border
set xtics rotate by -90


set terminal jpeg
set output "dgemm_gcc_flags.png"
plot "gcc_O0.dat"  using 14:xtic(1) linecolor rgb "pink","gcc_O1.dat"  using 14:xtic(1) linecolor rgb "black"  ,"gcc_O2.dat" using 14:xtic(1) linecolor rgb "purple" , "gcc_O3.dat" using 14:xtic(1) linecolor rgb "green"

