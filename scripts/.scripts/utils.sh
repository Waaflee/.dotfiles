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

bb() {
    local signal
    case "$1" in
        '')  blockify-dbus get 2>/dev/null && return 0;;
        ex|exit)
            signal='TERM';;       # Exit
        b|block)
            signal='USR1';;       # Block
        u|unblock)
            signal='USR2';;       # Unblock
        p|previous)
            signal='RTMIN';;      # Previous song
        n|next)
            signal='RTMIN+1';;    # Next song
        t|toggle)
            signal='RTMIN+2';;    # Toggle play song
        tb|toggleblock)
            signal='RTMIN+3';;    # Toggle block song
        ip|iprevious)
            signal='RTMIN+10';;   # Previous interlude song
        in|inext)
            signal='RTMIN+11';;   # Next interlude song
        it|itoggle)
            signal='RTMIN+12';;   # Toggle play interlude song
        itr|itoggleresume)
            signal='RTMIN+13';;   # Toggle interlude resume
        *) echo "Usage: bb ( b[lock] | u[nblock] | p[revious] | n[ext] | t[oggle] | t[oggle]b[lock] |...)" && return 0;;
    esac
    pkill --signal "$signal" -f 'python.*blockify'
}