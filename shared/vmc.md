## VMC Basics

Install the CLI for Cloud Foundry called VMC. Its packaged as a Ruby gem.

    sudo gem install vmc --pre

Log into cloudfoundry.com or any other cloudfoundry instance

    vmc target api.cloudfoundry.com
    vmc login [username]

Push the code to the cloud

    vmc push

It is very easy to learn vmc. To get a list of all functions

    vmc help


