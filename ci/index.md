title: Ruby Apps on Cloud Foundry

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE

<%= include "../shared/motivation/open_source.md" %>


!SLIDE

<%= include "../shared/cfdotcom.md" %>

!SLIDE vcenterH2

## Getting Your Hands Dirty

!SLIDE vcenter

## WiFi

### `westinsf_conf` Username:`bootcamp12` Password:`westin12`

!SLIDE vcenter

## Follow along

### [http://studios.cloudfoundry.com/ci](http://studios.cloudfoundry.com/ci/index.html)

!SLIDE

<%= include "../shared/started.md" %>

!SLIDE vcenter

## Signup Promo Code


### [`CFOpenTour2012`](https://my.cloudfoundry.com/signup/CFOpenTour2012)

!SLIDE

## Assumptions for Demos

### You have [RVM](http://beginrescueend.com/) installed

### You have Ruby `1.9.2` available


!SLIDE vcenterH2

## Tour Cloud Foundry via VMC

!SLIDE

<%= include "../shared/vmc.md" %>

!SLIDE

<%= include "../shared/runtimes.md" %>

!SLIDE

<%= include "../shared/runtimes2.md" %>

!SLIDE

<%= include "../shared/vmc_try.md" %>

!SLIDE

<%= include "../shared/push.md" %>

!SLIDE

<%= include "../shared/core_vmc.md" %>

!SLIDE

<%= include "../shared/update_apps_vmc.md" %>

!SLIDE

<%= include "../shared/vmc_stats_try.md" %>

!SLIDE

<%= include "../shared/vmc_services.md" %>

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

!SLIDE

<%= include "../shared/vmc_services_try.md" %>


!SLIDE

<%= include "../shared/vmc_tips.md" %>

!SLIDE vcenterH2

## Ruby Support

!SLIDE

## VMC is a gem

### VMC can be used by *any* Ruby Application

### VMC commands work against *any* Cloud Foundry instance

    Gemfile

    source "http://rubygems.org"

    gem "sinatra"
    gem "shotgun"
    gem "json", "~> 1.4.6", :require => "json/pure"
    gem "haml"
    gem "vmc", "~> 0.3.16.beta.5"

`gem "vmc"`

!SLIDE

## Using VMC from Sinatra

At the top of your app.rb include `require "vmc/client"`

You can then use `VMC::Client`

## Example

    get "/apps" do
        @vmcclient = VMC::Client.new(@target, @token)
        @apps = @vmcclient.apps
        haml :apps
    end

!SLIDE

## Ruby Web Frameworks

### Sinatra

- Detection of Sinatra apps via `require 'sinatra'`
- Runs on Thin or Webrick

### Rails

- Supports 3.0, 3.1 and 3.2
- Runs on Thin or Webrick
- Detection of Rails apps via presence of `config/environment.rb`


### Rack

- Detection via `config.ru`
- No web server added

!SLIDE

<%= include "../shared/autoreconfig.md" %>

!SLIDE

<%= include "../shared/rails-console.md" %>

!SLIDE

<%= include "../shared/rails-console2.md" %>

!SLIDE

<%= include "../shared/caldecott.md" %>

!SLIDE

<%= include "../shared/caldecott2.md" %>

!SLIDE

<%= include "../shared/manifest.md" %>

!SLIDE

## Try it now

### Delete the application

### Edit `manifest.yml` changing memory and name of service

    ---
    applications:
      .:
        framework:
          name: rails3
          info:
            mem: 128M
            description: Rails Application
            exec:
        mem: 128M
        instances: 1
        services:
          mysql-blog:
            type: mysql

### Push app again

    vmc push

!SLIDE

<%= include "../shared/standalone.md" %>

!SLIDE vcenterH2

## Demo Resque

!SLIDE vcenterH2

## Demo Elastic Search

!SLIDE vcenterH2

## Continuous Delivery

!SLIDE

## Benefits CI

### Sane iterations

### Saves time

### Reduces chance of human errors

### Customers get changes sooner and can provide feedback sooner

!SLIDE

## Cloud Foundry Codebase

### Most of the codebase is Open Source

### A few internal projects for cloudfoundry.com are not

### Once changes are approved, merged and tested by Jenkins they get pushed to GitHub

!SLIDE

## Continuous Delivery for `www`

### Using post commit hooks on GitHub.com

### Notify deployer app

### Push to Cloud Foundry staging

### Manual verification

### Push to Cloud Foundry production

!SLIDE

## Avoiding downtime when you push

Lets say you want this `my-great-app.cloudfoundry.com` to be the main url for your app

### First, create 2 production apps:

    vmc push --url my-great-app1.cloudfoundry.com

    vmc push --url my-great-app2.cloudfoundry.com --nostart

### Only start one app and bind it to production url

    vmc map my-great-app1 my-great-app.cloudfoundry.com

!SLIDE

## To deploy

App which is stopped receives the next push and is made alive.

    vmc update my-great-app2
    vmc start my-great-app2

Once sanity tests are done, toggle

    vmc map my-great-app2 my-great-app.cloudfoundry.com
    vmc unmap my-great-app1 my-great-app.cloudfoundry.com

Old app gets stopped

    vmc stop my-great-app1

!SLIDE

## No downtime

### However

- No breaking changes in schema if app uses a database
- Sessions will get killed on push

!SLIDE

## Thanks !

## Summary of what we did

### Got up and running on `VMC`

### Deployed and edited `Sinatra` app

### Deployed `Rails` app with `MySQL` service

### Saw new `standalone apps` in action with Resque and Elastic Search

### Deploy apps with `no downtime`

!SLIDE vcenterH2

## Questions ?







