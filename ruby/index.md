title: Ruby Development on Cloud Foundry

!SLIDE

<%= include "../shared/us/patrick.md" %>

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE

<%= include "../shared/vmc.md" %>

!SLIDE

<%= include "../shared/micro.md" %>

!SLIDE

## Ruby Support

### Runtimes
- Ruby 1.8.7
- Ruby 1.9.2

### Frameworks
- Sinatra
- Rails

!SLIDE

## New framework Support
- Rails 3.1 and 3.2 applications are now well-supported on CloudFoundry.com. 
- JRuby
- Rack Applications - Applications written with Rack, a modular Ruby web server interface, are now supported. 
  - Cloud Foundry's VMC will automatically recognize a config.ru Rackup file and use it to run your web application. 
  - The auto-reconfiguration feature is also supported for rack applications

!SLIDE

<%= include "../shared/services_list.md" %>

!SLIDE

## Service Runtime Configuration

Using gems like:

- vmware's official --> [cf-runtime](https://github.com/cloudfoundry/vcap-ruby) or
- Monica's --> [cloudfoundry-env](https://github.com/cloudfoundry-samples/cloudfoundry-env)

You can read the runtime environment and connect to each service

### Auto Reconfiguration
If you only have one service you can let Cloud Foundry auto configure your connection.
No need to change any code

**It just works**

!SLIDE

<%= include "../shared/caldecott.md" %>

!SLIDE

## Rails Console


    vmc rails-console [appname]

- Requires 0.3.16.beta.3 or higher.

TODO: Add screenshot

!SLIDE

<%= include "../shared/standalone.md" %>

!SLIDE

<%= include "../shared/manifest.md" %>






