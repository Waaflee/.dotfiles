# Usful functions I commonly use

# use as $ optimizepdf input.pdf output.pdf
optimizepdf() {
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$2 $1
}