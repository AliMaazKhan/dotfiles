wall=$(find /home/alimaaz/Pictures/wallpaper -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)

echo $wall

hyprctl hyprpaper preload $wall
hyprctl hyprpaper wallpaper "VGA-1,$wall"

wal -c
wal -i $wall



