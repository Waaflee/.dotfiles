# Useful functions I commonly use

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

fastencodeh264() {
    for i in *.$1; do; echo "Encoding $i..."; ffmpeg -i $i -c:v h264_nvenc -c:a libvorbis "$(basename -s .$1 "$i").mkv" && rm $i; done; 
}

fastwebp() {
	for i in *.$1; do; cwebp -q 50 $i -o $(basename -s .jpg $i).webp; done;
}