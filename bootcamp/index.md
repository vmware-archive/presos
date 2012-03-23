title: Cloud Foundry Bootcamp

!SLIDE

<%= include "../shared/us/monica.md" %>

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE

<%= include "../shared/vmc.md" %>

!SLIDE

<%= include "../shared/micro.md" %>

!SLIDE

<%= include "../shared/runtimes.md" %>

!SLIDE

<%= include "../shared/frameworks.md" %>

!SLIDE

<%= include "../shared/services_list.md" %>

!SLIDE

## Auto Reconfiguration

Until this feature was released, ruby developers had to add code to read at runtime the credentials for each service.

Gems like [cloudfoundry-env](https://github.com/cloudfoundry-samples/cloudfoundry-env) helped with this task but now thanks to code injection
All connections against localhost are modified to access the proper service

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







