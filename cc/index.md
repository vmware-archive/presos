title: Ruby for #ContributingCode

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>


!SLIDE vcenter

## Follow along

### [http://studios.cloudfoundry.com/cc](http://studios.cloudfoundry.com/cc/index.html)

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE

<%= include "../shared/motivation/open_source.md" %>


!SLIDE

<%= include "../shared/cfdotcom.md" %>

!SLIDE

## Ruby is…

- Dynamic
- Open source programming language
- Focus on simplicity and productivity.
- Elegant syntax that is natural to read and easy to write.

!SLIDE

## Ruby Syntax

    # The Greeter class
    class Greeter
      def initialize(name)
        @name = name.capitalize
      end

      def salute
        puts "Hello #{@name}!"
      end
    end

    # Create a new object
    g = Greeter.new("world")

    # Output "Hello World!"
    g.salute

More at http://www.ruby-lang.org/en/

!SLIDE

## Ruby Web Frameworks

### Sinatra

- Detection of Sinatra apps via `require 'sinatra'`
- Runs on Thin or Webrick

### Rack

- Detection via `config.ru`
- No web server added

!SLIDE

## Rails

- Web Development Framework
- MVC Architecture
- Written in Ruby
- Convention over Configuration
- RESTful
- Agile
- Clean

!SLIDE

## Rails on Cloud Foundry

- Supports 3.0, 3.1 and 3.2
- Runs on Thin or Webrick
- Detection of Rails apps via presence of `config/environment.rb`

!SLIDE vcenter

## Assumptions for Demos

### You have [RVM](http://beginrescueend.com/) with Ruby `1.9.2` available

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

!SLIDE vcenter

## Demo

### A situational app


!SLIDE vcenterH2

## http://summerjobs.cloudfoundry.com/

!SLIDE

<%= include "../shared/autoreconfig.md" %>

!SLIDE

<%= include "../shared/rails-console.md" %>

!SLIDE

<%= include "../shared/rails-console2.md" %>


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

!SLIDE

## Another situational app

### [#ContributingCode App](http://contributingcode.cloudfoundry.com)

### [Code](https://github.com/cloudfoundry-samples/contributing-code-app)

!SLIDE

## Thanks !

### Questions: @ciberch







