## VMC

Install the CLI for Cloud Foundry called VMC. Its packaged as a Ruby gem.

    sudo gem install vmc


Log into cloudfoundry.com or any other cloudfoundry instance

    vmc target api.cloudfoundry.com
    vmc login [username]


Push the code to the cloud

    vmc push
