make lorentzTransform.pdf
#exit
make lorentzTransformblog.pdf
tex2mathjax -f lorentzTransformblog.tex | \
grep -ve 'Lorentz transformations in Space Time Algebra' | \
sed 's/lorentzTransformblog.pdf/lorentzTransform.pdf/;' | \
sed 's,\\emph{{\(.*\)}},\1,' | \
perl -00 -pe '' > x.txt
pbcopy < x.txt 2>/dev/null
clip.exe < x.txt 2>/dev/null
