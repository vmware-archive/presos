## Slideshows for Cloud Foundry

This repo will have all the presos I am using for Cloud Foundry presentations.
Feel free to fork and use.

In order to use these slides you will need to

``` ruby
bundle install
```

To read about the SlideShow gem go [here](http://slideshow.rubyforge.org/)

## Generation

You can then generate the slides for the appropriate directory

First cd into the directory of choice. Example:

``` bash
cd mobile
```

Then generate as many slide sets as you want.
The make.sh script in each dir has the commands to use the slideshow script with the templates in this repo

``` bash
./make.sh
```

Finally you can push this app to Cloud Foundry for example

``` bash
cd output
bundle install
bundle package
vmc push
```

This will be detected as a Sinatra App.
