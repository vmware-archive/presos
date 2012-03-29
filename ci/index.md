title: Ruby Production Apps on Cloud Foundry

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>

!SLIDE

## Agenda

    How to use Cloud Foundry for end to end Continuous Delivery of Production Ruby Web Apps

### Cloud Foundry Intro

### VMC gem

### Ruby Web Applications

### Using Cloud Foundry for Continuous Delivery

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

## VMC gem

- Since VMC is a gem it can be used by any Ruby Application
- VMC commands work against any Cloud Foundry instance because they all offer the same REST API

### Using gem to log in users

    require "vmc/client"

    post "/login" do
        email = params[:email]
        password = params[:password]

        if (email and password)
          @vmcclient = VMC::Client.new(@target)
          begin
            @vmcclient.login(email, password)
            # Never store user name and password
            session[:auth_token] = @vmcclient.auth_token
            session[:email] = email
            session[:failed_attempts] = 0
          rescue Exception => ex
            @logger.error("Failed logging in #{session[:failed_attempts]} times")
            session[:flash_error] =  "Login Failed"
          end
        else
          session[:flash_error] = "Fill out the form"
        end
        redirect_to_main_page
      end

    get "/apps" do
        @vmcclient = VMC::Client.new(@target, session[:auth_token])
    end

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

<%= include "../shared/services2.md" %>

!SLIDE

## Auto Reconfiguration

Until this feature was released, Ruby web developers had to add code to read at runtime the credentials for each service.

Gems like [cloudfoundry-env](https://github.com/cloudfoundry-samples/cloudfoundry-env) helped with this task but now thanks to code injection
All connections against localhost are modified to access the proper service

**It just works**

!SLIDE


<%= include "../shared/caldecott.md" %>

!SLIDE

<%= include "../shared/rails-console.md" %>

!SLIDE

<%= include "../shared/standalone.md" %>

!SLIDE

<%= include "../shared/manifest.md" %>

## Continuous Delivery

- Don't put off automating deployments of your applications

### Many benefits
- Sane iterations
- Saves time
- Reduces chance of human errors
- Customers get changes sooner and can provide feedback sooner

## Cloud Foundry Codebase

- Most of the codebase is Open Source
- A few internal projects for cloudfoundry.com are not
- Engineering team likes using Gerrit for code reviews because you can easily approve or reject changes
- Once changes are approved, merged and tested by Jenkins they get pushed to GitHub
- GitHub is better than Gerrit for code browsing

## Continuous Delivery for www.cloudfoundry.com

- Using post commit hooks on GitHub.com
- Notify deployer app
- Push to Cloud Foundry staging
- Manual verification
- Push to Cloud Foundry production

## Avoiding downtime when you push

- Lets say you want this `my-great-app.cloudfoundry.com` to be the main url for your app
- Create 2 production apps: Example:

    my-great-app1.cloudfoundry.com
    my-great-app2.cloudfoundry.com

- Toggle which app is live
- App which is stopped receives the next push
- Once push is made, app is brought up but not mapped to main url
- Once sanity tests are done, app gets mapped to main url
- Old app gets unmapped from main url
- Old app gets stopped







