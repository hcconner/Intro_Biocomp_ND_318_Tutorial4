cat "$1" | sed '1d'| cut -d, -f-1,2 | sort -ut"," -k1,1 -k2n,2  > "$2"


