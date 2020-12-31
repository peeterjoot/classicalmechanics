file=fundamentalTheoremOfGC
make ${file}.pdf
#exit
make ${file}blog.pdf
p='Fundamental theorem of geometric calculus'
tex2mathjax -f ${file}blog.tex | \
grep -ve "$p" | \
sed 's/${file}blog.pdf/${file}.pdf/;' | \
sed 's,\\emph{{\(.*\)}},\1,' | \
perl -00 -pe '' > x.txt
pbcopy < x.txt 2>/dev/null
clip.exe < x.txt 2>/dev/null
