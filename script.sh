#!/bin/bash

if [ -f /tmp/log.txt ]; then
	rm -f /tmp/log.txt
fi

cd py-brain-inventory
git log --pretty=format:user:%aN%n%ct --reverse --raw --encoding=UTF-8 --no-renames --no-show-signature > /tmp/log.txt
cd ..

#Staff
if [[ "$OSTYPE" == *"darwin"* ]]; then
       sed -i '' 's|Ivan E. Cao-Berg|Ivan|g' /tmp/log.txt
       sed -i '' 's|icaoberg|Ivan|g' /tmp/log.txt
       sed -i '' 's|Ivan Cao-Berg|Ivan|g' /tmp/log.txt
       sed -i '' 's|eduardo.figueroa7|Eduardo|g' /tmp/log.txt
       sed -i '' 's|Monica Paz Parra|Monica|g' /tmp/log.txt
else
       sed -i 's|Ivan E. Cao-Berg|Ivan|g' /tmp/log.txt
       sed -i 's|icaoberg|Ivan|g' /tmp/log.txt
       sed -i 's|Ivan Cao-Berg|Ivan|g' /tmp/log.txt
       sed -i 's|eduardo.figueroa7|Eduardo|g' /tmp/log.txt
       sed -i 's|Monica Paz Parra|Monica|g' /tmp/log.txt
fi

#students
if [[ "$OSTYPE" == *"darwin"* ]]; then
       sed -i '' 's|jellyfishking-github|Neptune|g' /tmp/log.txt
       sed -i '' 's|kexin-chen4|Kexin|g' /tmp/log.txt
       sed -i '' 's|mercadec|Mercedes|g' /tmp/log.txt
       sed -i '' 's|Sunshine-Alpha|Sunshine|g' /tmp/log.txt
       sed -i '' 's|francojoshua|Joshua|g' /tmp/log.txt
       sed -i '' 's|angelinaayoubi|Angie|g' /tmp/log.txt
       sed -i '' 's|kvallejo6|Kimberly|g' /tmp/log.txt
       sed -i '' 's|ManavMahida|Manav|g' /tmp/log.txt
       sed -i '' 's|cmucung|Carmen|g' /tmp/log.txt
       sed -i '' 's|Eunice-Son|Eunice|g' /tmp/log.txt
       sed -i '' 's|eileen-png|Eileen|g' /tmp/log.txt
       sed -i '' 's|Bobvius|Louis|g' /tmp/log.txt
       sed -i '' 's|Tffny3|Tiffany|g' /tmp/log.txt
       sed -i '' 's|sambenni|Sam|g' /tmp/log.txt
       sed -i '' 's|Togundar|Temi|g' /tmp/log.txt
       sed -i '' 's|marcuslynes|Marcuslyne|g' /tmp/log.txt
       sed -i '' 's|nicolasw-cmu|Nicolas|g' /tmp/log.txt
else
       sed -i 's|jellyfishking-github|Neptune|g' /tmp/log.txt
       sed -i 's|kexin-chen4|Kexin|g' /tmp/log.txt
       sed -i 's|mercadec|Mercedes|g' /tmp/log.txt
       sed -i 's|Sunshine-Alpha|Sunshine|g' /tmp/log.txt
       sed -i 's|francojoshua|Joshua|g' /tmp/log.txt
       sed -i 's|angelinaayoubi|Angie|g' /tmp/log.txt
       sed -i 's|kvallejo6|Kimberly|g' /tmp/log.txt
       sed -i 's|ManavMahida|Manav|g' /tmp/log.txt
       sed -i 's|cmucung|Carmen|g' /tmp/log.txt
       sed -i 's|Eunice-Son|Eunice|g' /tmp/log.txt
       sed -i 's|eileen-png|Eileen|g' /tmp/log.txt
       sed -i 's|Bobvius|Louis|g' /tmp/log.txt
       sed -i 's|Tffny3|Tiffany|g' /tmp/log.txt
       sed -i 's|sambenni|Sam|g' /tmp/log.txt
       sed -i 's|Togundar|Temi|g' /tmp/log.txt
       sed -i 's|marcuslynes|Marcuslyne|g' /tmp/log.txt
       sed -i 's|nicolasw-cmu|Nicolas|g' /tmp/log.txt
fi



gource /tmp/log.txt -s 1 --log-format git --stop-at-end --title "py-brain-inventory" \
       --seconds-per-day 5 \
       --user-image-dir images \
       --stop-at-end \
       --highlight-users \
       --logo images/logo.png \
       start_date = "2023-07-06"
       stop_date = "2023-08-03"
       -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 \
       -preset ultrafast -crf 1 -threads 0 -bf 0 output.mp4 \
       2> /dev/null

if [ -f output.log ]; then
	rm -f output.log
fi
