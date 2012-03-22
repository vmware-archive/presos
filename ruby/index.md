title: Ruby Development on Cloud Foundry

!SLIDE

## Cloud Foundry the First Open PaaS

![main](/img/Panel.png)

- Multi Languages: Ruby, PHP, Python, Java, Javascript, Scala
- Multi Frameworks: Rails, Sinatra, NodeJS, Spring, Grails, Lift
- Multi Services: MongoDB, Redis, RabbitMQ, MySQL, PostreSQL
- Multi Clouds: Infrastructure Independent
- Open Source: [http://github.com/cloudfoundry](http://github.com/cloudfoundry)
- Extensible !

!SLIDE

## Getting Started

- Signup for account [https://my.cloudfoundry.com/signup/march_madness](https://my.cloudfoundry.com/signup/march_madness)
- Find a good project to push. Checkout [http://github.com/cloudfoundry-samples](http://github.com/cloudfoundry-samples)

!SLIDE

## VMC

- Install the CLI for Cloud Foundry called VMC. Its packaged as a Ruby gem.

<% code do %>
    sudo gem install vmc
<% end %>

- Log into cloudfoundry.com or any other cloudfoundry instance

<% code do %>
    vmc target api.cloudfoundry.com
    vmc login <username>
<% end %>

- Push the code to the cloud

<% code do %>
    vmc push --runtime=ruby19
<% end %>

!SLIDE

## Micro Cloud Foundry

- Cloud on a stick. Alternative to local environment
- Miniature version of platform running cloudfoundry.com
- Supports offline mode
  - Requires 0.3.16.beta.4 or higher.

<% code do %>
    vmc target api.<name>.cloudfoundry.me
    vmc register <email>
    vmc login <email>
<% end %>

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

## Services

- MySQL 5.1
- PostgreSQL 9.0
- MongoDB 1.8
- Redis 2.2
- RabbitMQ 2.4

!SLIDE

## Auto Reconfiguration

Until this feature was released, ruby developers had to add code to read at runtime the credentials for each service.

Gems like [cloudfoundry-env](https://github.com/cloudfoundry-samples/cloudfoundry-env) helped with this task but now thanks to code injection
All connections against localhost are modified to access the proper service

**It just works**

!SLIDE

## Service tunneling

- The ability to access any service on Cloud Foundry as if it was running locally

<% code do %>
    gem install caldecott
    vmc tunnel <service_name>
<% end %>

TODO: Add MongoHub Screenshot

!SLIDE

## Rails Console

<% code do %>
    vmc rails-console <appname>
<% end %>

- Requires 0.3.16.beta.3 or higher.

TODO: Add screenshot

!SLIDE

## Standalone" applications. 

- These applications are executed as normal system processes rather than deployed through an application or web server. 
These are often background or asynchronous jobs that work on processing items off a queue, for example. 
The standalone Ruby applications will support such worker libraries as **resque** or **delayed_jobs** 

- Requires 0.3.16.beta.5 or higher.
- Requires 0.3.16.beta.5 or higher.

!SLIDE

## Manifest

- Easily detail all of the resources your application needs including
- Services
- Memory
- Urls

## Example
<% code do %>
  .:
    name: hello-sinatra
    instances: 1
    framework:
      name: sinatra
      info:
        exec: ruby main.rb
        description: Sinatra Application
        mem: 128M
    url: ${name}-suraci.${target-base}
    services:
      mysql-2cccd:
        type: :mysql
    mem: 128M
<% end %>

- Requires 0.3.16.beta.1 or higher






