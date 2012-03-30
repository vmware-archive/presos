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

<%= include "../shared/motivation/contributions.md" %>

!SLIDE

<%= include "../shared/cfdotcom.md" %>

!SLIDE

<%= include "../shared/started.md" %>

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

<%= include "../shared/caldecott.md" %>

!SLIDE

<%= include "../shared/caldecott2.md" %>

!SLIDE

<%= include "../shared/rails-console.md" %>

!SLIDE

<%= include "../shared/rails-console2.md" %>

!SLIDE

<%= include "../shared/standalone.md" %>

!SLIDE

<%= include "../shared/manifest.md" %>

!SLIDE vcenter

## Continuous Delivery

### Don't put off automating deployments of your applications

!SLIDE

## Benefits CI
- Sane iterations
- Saves time
- Reduces chance of human errors
- Customers get changes sooner and can provide feedback sooner

!SLIDE

## Cloud Foundry Codebase

- Most of the codebase is Open Source
- A few internal projects for cloudfoundry.com are not
- Engineering team likes using Gerrit for code reviews because you can easily approve or reject changes
- Once changes are approved, merged and tested by Jenkins they get pushed to GitHub
- GitHub is better than Gerrit for code browsing

!SLIDE

## Continuous Delivery for `www`

- Using post commit hooks on GitHub.com
- Notify deployer app
- Push to Cloud Foundry staging
- Manual verification
- Push to Cloud Foundry production

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

!SLIDE vcenterH2

## Questions ?







