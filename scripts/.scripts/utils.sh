# Usful functions I commonly use

# use as $ optimizepdf input.pdf output.pdf
optimizepdf() {
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$2 $1
}

walset() {
    wal -n -i "$@"
    feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
}

hidesktop() {
    cp "$@" ~/.local/share/applications/$(basename "$@")
    echo "NoDisplay=true" >> ~/.local/share/applications/$(basename "$@")
}