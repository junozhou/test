ls -F | grep '/$' | awk -F '/' '{print $1}' > fz