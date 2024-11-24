#!/bin/bash
pywal_css="$HOME/.cache/wal/colors"
wofi_css="$HOME/.config/wofi/style.css"

bg=$(sed -n '1p' "$pywal_css")
fg=$(sed -n '5p' "$pywal_css")
hl=$(sed -n '4p' "$pywal_css")
sel=$(sed -n '7p' "$pywal_css")

cat > "$wofi_css" <<EOF
window {
    background-color: $bg;
    color: $fg;
}

#input {
    background-color: $hl;
    color: $fg;
}

#input:focus {
    background-color: $sel;
}

#list {
    background-color: $hl;
    color: $fg;
}

#list:selected {
    background-color: $sel;
    color: $bg;
}
EOF

