rm -rf ../output/public/mob;
bundle exec slideshow -t ../templates/deck.js/deck.js.txt index.md -o ../output/public/mob;
bundle exec slideshow -t ../templates/mobile/s6.txt index.md -o ../output/public/mob/mobile;
bundle exec slideshow -t ../templates/s6/s6.txt index.md -o ../output/public/mob/pdf;