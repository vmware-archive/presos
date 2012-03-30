## Try VMC now

### Fork the [sinatra-cloudfoundry-basic-website](https://github.com/ciberch/sinatra-cloudfoundry-basic-website) repo on GitHub

### Clone it to your machine

    git clone git@github.com:<your_name>/sinatra-cloudfoundry-basic-website.git mycf

### Package the gems

    cd mycf
    bundle install;bundle package

### Push the application

    vmc push --runtime=ruby19