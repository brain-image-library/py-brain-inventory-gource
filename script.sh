#!/bin/bash

if [ -f /tmp/gource.log ]; then
	rm -f /tmp/gource.log
fi

cd py-brain-inventory
git log --pretty=format:'%h %aN %ad' --date=iso --reverse > /tmp/gource.log
sed  -E 's/Ivan E. Cao\-Berg/icaoberg|g' /tmp/gource.log 
sed  -E 's|eduardojfigueroa|eduardo.figueroa7|g' /tmp/gource.log 

#gource --start-date "2023-06-30" --stop-date "2023-08-04" --log-format custom 
/tmp/gource.log

##gource -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 $(date +%Y%m%d).mp4
