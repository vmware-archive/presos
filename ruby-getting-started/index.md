title: Ruby Apps on Cloud Foundry

!SLIDE

<%= include "../shared/us/jennifer.md" %>

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE

<%= include "../shared/motivation/open_source.md" %>


!SLIDE

<%= include "../shared/cfdotcom.md" %>

!SLIDE vcenterH2

## Getting Your Hands Dirty

!SLIDE

<%= include "../shared/started.md" %>

!SLIDE vcenter

## Signup Promo Code


### [`CFOpenTour2012`](https://my.cloudfoundry.com/signup/CFOpenTour2012)

!SLIDE

## Assumptions for Demos

### You have `RVM` installed

### You have Ruby `1.9.2` available


!SLIDE vcenterH2

## Tour Cloud Foundry via VMC

!SLIDE

## VMC Basics

Install the CLI for Cloud Foundry called VMC. Its packaged as a Ruby gem.

    sudo gem install vmc --pre

Log into cloudfoundry.com or any other cloudfoundry instance

    vmc target api.cloudfoundry.com
    vmc login [username]

Push the code to the cloud

    vmc push

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
    gem "vmc", "~> 0.3.16.beta.6"

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

## Packaging Ruby Apps

### Use Bundler

### Cloud Foundry manages your dependencies using your Gemfile.lock

### Run `bundle package` before deploying to Cloud Foundry

- No download from rubygems.org = faster deployment

### Gems downloaded from rubygems.org are cached across CF

### Gems are installed into repository local to your app

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


!SLIDE vcenter

## Sinatra Demo

### Summer Jobs

!SLIDE

## Auto Reconfiguration

- Automatically enabled if there is only one service of a given type
- No need to parse `VCAP_SERVICES` and connect to the proper port
- Just deploy and enjoy

## If you prefer to `DIY`

### Create `config/cloudfoundry.yml` with

    autoconfig: false

Use cf-runtime gem to make service connections or parse environment

!SLIDE

## Service tunneling

- Its is common during the development cycle for developers to want to examine the data directly
- Also common to examine data in production for troubleshooting
- With Caldecott, developers have the ability to access any service on Cloud Foundry as if it was running locally

### To install

    gem install caldecott

### To connect

    vmc tunnel <service_name>

*Make sure you are using addressable 2.2.6*

!SLIDE

## Manifest

- Easily detail all of the resources your application needs to run including
    - Services
    - Memory
    - Urls
- Very simple yaml file
- *Requires 0.3.16.beta.1 or higher*

!SLIDE

## Manifest Example

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

!SLIDE vcenter

## Rails Demo

### Website Prelaunch

!SLIDE

## Rails Console

- Another tool for examining data in development and production
- Also useful for performing maintenance tasks using Rake (i.e. seed the database)

## Example

    vmc rails-console mynewblog
    irb():001:0> @comment = Comment.find_by_author("Joe")
    #<Comment id: 7, post_id: 1, author: "Joe", body: "I have something real...">
    irb():002:0> @comment.delete
    #<Comment id: 7, post_id: 1, author: "Joe", body: "I have something real...">
    irb():004:0> exit

!SLIDE

## Standalone applications 

### `Brand New` to cloudfoundry.com

### The "no framework" option
- Choose a runtime and provide a start command
- Choose a URL or "none" if no web port needed

### Supports `long-running` apps
- Investigating support for short-lived tasks and cron 

### Great for background or asynchronous jobs

### Requires vmc 0.3.16.beta.6 or higher

!SLIDE vcenterH2

## Demo Resque

!SLIDE

## Problems with Monolithic Applications

### Lack of `scalability`
- Scale through replication
- Non-replicable component => nothing can be replicated
- Can’t scale different parts of the application differently

### Lack of `deployability`
- Deploy it all in one go
- Increased risk of something breaking

!SLIDE

## More Problems with Monolithic Applications

### Applications are `brittle`
- Store can’t accept orders unless all services are available
- Failure (e.g. memory leak) in one component can take down every other 

### `Monolingual`

!SLIDE

## Standalone applications to the rescue!

- Deploy individual apps as `services`

- Be a `polyglot` programmer!

- Possible using web frameworks, but `standalone support` provides more options


!SLIDE vcenterH2

## Demo Elastic Search

!SLIDE

## Summary of what we did

### Got up and running on `VMC`

### Deployed and edited `Sinatra` app
- Used caldecott to connect to app's Redis service

### Deployed `Rails` app with `MySQL` service

### Used `Rails` Console
- Ran rake task to seed DB
- Inspected data

### Saw `Redis` and `Resque` in action with Standalone Apps

### Deployed a polyglot application using standalone Elastic Search

!SLIDE

## Coming soon?

### Ruby `1.9.3`

### Remote `debugging` for local cloud

### IRB `console` for other types of Ruby apps

### Rails improvements
- Support for `asset pipeline`
- Ability to switch modes
- Ability to disable automatic migrations
- Automatic staging of MySQL or Postgres gems for auto-reconfiguration

### Bundler/Gem improvements
- Support for platform-conditional gems
- Support for Bundler groups
- Support for `rmagick`

!SLIDE

## Help us make Ruby better on Cloud Foundry

### Open source code

- http://github.com/cloudfoundry

### Ideas, issues

- http://cloudfoundry.atlassian.net

### Sign-up for a free account

- http://www.cloudfoundry.com

!SLIDE vcenterH2

## Questions ?







