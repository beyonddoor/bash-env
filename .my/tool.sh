
backup() {
    tar czvf linux.env.tar.gz "$1" --exclude 'bak/*' --exclude 'bak'    
}

restore() {
    cd ~
    tar xzvf "$1"

    mkdirs=(bin
        backup
        repos
        download
    )

    for i in "${mkdirs[@]}"; do
        mkdir -p ~/$i
    done
}

[ $# -lt 2 ] && { echo "usage backup|restore <path>"; exit 1; }

$1 $2