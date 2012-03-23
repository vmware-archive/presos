title: Cloud Foundry Bootcamp

!SLIDE

<%= include "../shared/monica.md" %>

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE

<%= include "../shared/vmc.md" %>

!SLIDE

<%= include "../shared/micro.md" %>

!SLIDE

## Runtimes
- Ruby 1.8.7
- Ruby 1.9.2
- Java 6 1.6
- Node 0.4.12
- Node 0.6.8

!SLIDE

## Frameworks
- Sinatra
- Rails 3
- Rack
- Scala/Lift
- NodeJS
- Grails
- Spring
- Java Web

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


    gem install caldecott

    vmc tunnel [service_name]


TODO: Add MongoHub Screenshot

!SLIDE

## Rails Console


    vmc rails-console [appname]

- Requires 0.3.16.beta.3 or higher.

TODO: Add screenshot

!SLIDE

<%= include "../shared/standalone.md" %>

!SLIDE

<%= include "../shared/manifest.md" %>







