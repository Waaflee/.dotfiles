pdftotext -layout "$1" output.txt
cut -c -124 output.txt > trimmed_output.txt
echo "" > dump.txt
# tr -d " \t" < dump.txt > output.txt
# echo "" > dump.txt
cat trimmed_output.txt | grep -m 1 '49-ALIC. DIFER.' >> dump.txt
cat trimmed_output.txt | grep -m 1 '757-CONSUMOS DAMSU' >> dump.txt
cat trimmed_output.txt | grep -m 1 '764-FDO.ATENC.DISCA' >> dump.txt
cat trimmed_output.txt | grep -m 1 '311-DEP.FUND.' >> dump.txt
cat trimmed_output.txt | grep -m 1 '768-FOND.SOLID.' >> dump.txt

mv dump.txt "$1".csv
# cat dump.txt | tr -s '[:blank:]' ':' | tr , . | tr : , > "$1".csv
# cat dump.txt | tr -s '[:blank:]' ':' > formated.txt
rm output.txt
rm trimmed_output.txt
