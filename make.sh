slideshow -t templates/deck.js/deck.js.txt index.md -o output/public;
slideshow -t templates/mobile/s6.txt index.md -o output/public/mobile;
slideshow index.md -o output/public/pdf;

cd mobile; ./make.sh;
cd ../ci; ./make.sh;
cd ../ruby; ./make.sh;
cd ../ruby-getting-started; ./make.sh;
cd ../erlang; ./make.sh;
cd ../bootcamp; ./make.sh;
cd ../mongodb; ./make.sh;
cd ..