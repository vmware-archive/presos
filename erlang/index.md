title: Deploy Applications Faster

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>

!SLIDE

    How Cloud Foundry, the first Open PaaS, can help you deploy apps faster
    and experiment with new technologies.

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


!SLIDE

<%= include "../shared/motivation/computing_trends.md" %>

!SLIDE

<%= include "../shared/motivation/mobile.md" %>


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

<%= include "../shared/motivation/open_source.md" %>

!SLIDE

<%= include "../shared/cfdotcom.md" %>

!SLIDE

<%= include "../shared/started.md" %>

!SLIDE

<%= include "../shared/vmc.md" %>

!SLIDE

<%= include "../shared/push.md" %>

!SLIDE

<%= include "../shared/core_vmc.md" %>

!SLIDE

<%= include "../shared/update_apps_vmc.md" %>

!SLIDE

<%= include "../shared/vmc_tips.md" %>

!SLIDE

<%= include "../shared/micro.md" %>

!SLIDE

<%= include "../shared/runtimes.md" %>

!SLIDE

<%= include "../shared/frameworks.md" %>

!SLIDE

<%= include "../shared/services_list.md" %>

!SLIDE

<%= include "../shared/services2.md" %>

!SLIDE

## Erlang in Cloud Foundry ##

### From Here - the Language Support deep-dive:
- What does CloudFoundry provide to tenant languages?
- What must a language do to fit into CloudFoundry?
- How does Erlang work as a part of CloudFoundry?

!SLIDE

## What can the platform do for me? ##

!SLIDE

## Platform Features ##

### HTTP Routing ###

!SLIDE

## Platform Features ##

### Application Distribution ###

!SLIDE

## Platform Features ##

### Service Binding ###

!SLIDE

## Platform Features ##

### Management ###

!SLIDE

## What can I do for the platform? ##

!SLIDE

## Tenant Requirements ##

### Run as a process ###

!SLIDE

## Tenant Requirements ##

### Respond to HTTP requests ###

!SLIDE

## Tenant Requirements ##

### Die when I’m dead ###

!SLIDE

## Tenant Requirements ##

### Handle being terminated abruptly ###

(and brutally)

!SLIDE

## Tenant Requirements ##

### Keep the binary small ###

!SLIDE

## That’s all good. But what about Erlang? ##

!SLIDE

## Erlang as a Tenant ##

### Assumes OTP & Rebar ###

!SLIDE

## Erlang as a Tenant ##

### Startup script in `bin/` ###

!SLIDE

## Erlang as a Tenant ##

### Configuration file in `etc/` ###

!SLIDE

## Erlang as a Tenant ##

### Compiled application code in `lib/` ###

!SLIDE

## Erlang as a Tenant ##

### `VMC_APP_PORT` & `VCAP_SERVICES` ###

!SLIDE