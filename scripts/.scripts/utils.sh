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
	for i in *.$1; do; cwebp $i -o $(basename -s .$1 $i).webp; done;
}

compress_and_resize_i() {
    magick $1 -strip -interlace Plane -gaussian-blur 0.05 -quality 85% -resize x$2 $1
}
compress_i() {
    magick $1 -strip -interlace Plane -gaussian-blur 0.05 -quality 85% $1
}
generate_srcset() {
    cwebp -q 60 $1 -o $1.webp
    heif-enc -q 60 -A -o $1.avif $1
}

hide_lsp_desktop() {
	echo "[Desktop Entry]
	Hidden=true" > /tmp/1
	
	find /usr -name "*lsp_plug*desktop" 2>/dev/null | cut -f 5 -d '/' | xargs -I {} cp /tmp/1 ~/.local/share/applications/{}
}

set_brightness() {
	ddcutil setvcp 10 $1
}
