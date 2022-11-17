set style data histogram 
set style histogram clustered

set title "Histogrammes comparants les versions selon les flags de gcc"

set xlabel "Differentes versions dgemm"
set ylabel "MiB/s"

set xrange [0:8]

#Remplissage histogram
set style fill solid
set xtics rotate by -30


set terminal jpeg
set output "dgemm_gcc_120X80_O.jpeg"
plot "gcc_O0.dat"  using 14:xtic(1) linecolor rgb "gcc_O1.dat" using 14:xtic(1) linecolor rgb "red" ,"gcc_O2.dat" using 14:xtic(1) linecolor rgb "purple" , "gcc_O3.dat" using 14:xtic(1) linecolor rgb "green"
