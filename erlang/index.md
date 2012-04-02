title: Cloud Foundry @ Erlang Factory

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>

!SLIDE

## About Paul

- Founder at 23wide, Senior Developer at LShift
- Worked for companies both large and very small
- Generalist across as many languages as opportunity allows
- Tries to select the right tools for the right job

### Contact Info

Twitter : [@paulrojo](http://twitter.com/paulrojo)

Email: [paul@23wide.com](mailto:paul@23wide.com)

!SLIDE

## Agenda

- Why do we need a PaaS ?
- What is Cloud Foundry ?
- How to deploy and scale apps on Cloud Foundry
- How to bind application services
- Adding Erlang to Cloud Foundry

!SLIDE

## Mobile Dreams

- When I was a CSE student in Columbus, Ohio I always dreamt of having a **computer in my head**
- Not only for the raw computing power but for the ability to harness the power and knowledge of my society via the Internet
- That was in 98' and 99' very few people even had laptops

![main](/img/brain-computer-inside.jpg)

!SLIDE

<%= include "../shared/motivation/moore_hw_only.md" %>

### Software development speed needs to increase to keep up with demands

!SLIDE

<% left do %>
<%= include "../shared/motivation/agility.md" %>
<%= include "../shared/motivation/agility_sol.md" %>
<% end %>

<% right do %>
![main](/img/agile.jpg)
<% end %>


!SLIDE

<%= include "../shared/motivation/why_paas.md" %>

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE

<%= include "../shared/cfdotcom.md" %>

!SLIDE

<%= include "../shared/motivation/open_source.md" %>

!SLIDE

## Erlang in Cloud Foundry ##

### From Here - the Language Support deep-dive:
- What does CloudFoundry provide to tenant languages?
- What must a language do to fit into CloudFoundry?
- How does Erlang work as a part of CloudFoundry?

!SLIDE vcenterH2

## What can the platform do for me? ##

!SLIDE vcenter

## Platform Features ##

### HTTP Routing ###

!SLIDE vcenter

## Platform Features ##

### Application Distribution ###

!SLIDE vcenter

## Platform Features ##

### Service Binding ###

!SLIDE vcenter

## Platform Features ##

### Management ###

!SLIDE vcenterH2

## What can I do for the platform? ##

!SLIDE vcenter

## Tenant Requirements ##

### Run as a process ###

!SLIDE vcenter

## Tenant Requirements ##

### Respond to HTTP requests ###

!SLIDE vcenter

## Tenant Requirements ##

### Die when I’m dead ###

!SLIDE vcenter

## Tenant Requirements ##

### Handle being terminated abruptly ###

!SLIDE vcenter

## Tenant Requirements ##

### Keep the binary small ###

!SLIDE vcenterH2

## That’s all good. But what about Erlang? ##

!SLIDE vcenter

## Erlang as a Tenant ##

### Assumes OTP & Rebar ###

!SLIDE vcenter

## Erlang as a Tenant ##

### Startup script in `bin/` ###

!SLIDE vcenter

## Erlang as a Tenant ##

### Configuration file in `etc/` ###

!SLIDE vcenter

## Erlang as a Tenant ##

### Compiled application code in `lib/` ###

!SLIDE vcenter

## Erlang as a Tenant ##

### `VMC_APP_PORT` & `VCAP_SERVICES` ###

!SLIDE vcenterH2

## Cloud Foundry In Action

!SLIDE vcenter

## Follow Along

### [http://studios.cloudfoundry.com/erlang](http://studios.cloudfoundry.com/erlang)

!SLIDE

<%= include "../shared/started.md" %>

!SLIDE vcenterH2

## Promo code: HACK

!SLIDE

<%= include "../shared/vmc.md" %>

!SLIDE

<%= include "../shared/vmc_try.md" %>

!SLIDE

<%= include "../shared/push.md" %>

!SLIDE

<%= include "../shared/runtimes.md" %>

!SLIDE

<%= include "../shared/runtimes2.md" %>

!SLIDE

<%= include "../shared/frameworks.md" %>

!SLIDE

<%= include "../shared/core_vmc.md" %>

!SLIDE

<%= include "../shared/update_apps_vmc.md" %>

!SLIDE

<%= include "../shared/vmc_tips.md" %>

!SLIDE

<%= include "../shared/micro.md" %>


!SLIDE

<%= include "../shared/services_list.md" %>

!SLIDE

<%= include "../shared/mysql.md" %>

!SLIDE

<%= include "../shared/postgre.md" %>

!SLIDE

<%= include "../shared/mongodb.md" %>

!SLIDE

<%= include "../shared/redis.md" %>

!SLIDE

<%= include "../shared/rabbitmq.md" %>

!SLIDE vcenterH2

## Erlang Demo

!SLIDE vcenter

## Slides

### [http://studios.cloudfoundry.com/erlang](http://studios.cloudfoundry.com/erlang)

!SLIDE vcenterH2

## Questions ?