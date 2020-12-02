make reciprocal.pdf
#exit
make reciprocalblog.pdf
tex2mathjax -f reciprocalblog.tex | \
grep -ve 'Curvilinear coordinates and gradient in spacetime' | \
sed 's/reciprocalblog.pdf/reciprocal.pdf/;' | \
sed 's,\\emph{{\(.*\)}},\1,' | \
perl -00 -pe '' > x.txt
pbcopy < x.txt 2>/dev/null
clip.exe < x.txt 2>/dev/null
