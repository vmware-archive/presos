title: March Mobile Madness Hackathon

!SLIDE

## March Mobile Madness

!SLIDE

## About Me
- Developer Advocate @ [Cloud Foundry](http://cloudfoundry.com)
- 12 years software development experience
- Last 5 years on the Social Web: MySpace, Facebook, Socialcast
- Acquired by VMware and moved to Cloud Foundry team
- Love working with developers and mobile
- twitter : [@ciberch](http://twitter.com/ciberch)
- email: [mwilkinson@vmware.com](mailto:mwilkinson@vmware.com)

![main](/img/mobile-mon.png)

    Loves the web and data portability.


!SLIDE

## Today's Schedule

- 11:00 am -- Power up with Bagels and Coffee
- **11:05 am -- Intro to Cloud Foundry -- Presentation and Hands On Demo**
- 11:35 am -- Mobile Development with Javascript and HTML 5
- 12:05 pm -- Intros and organize into teams
- 12:15 pm -- Hacking Starts. Mission: Build a solid and fun boilerplate application other developers can use to build rich mobile applications.
- 04:30 pm -- Submit boilerplate apps to be judged
- 04:45 pm -- Present your app to the world (5 minutes per presenter)

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

### Example

<% code do %>
    git clone https://github.com/ciberch/node-activities-boilerplate
    cd node-activities-boilerplate
<% end %>

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
    vmc push --runtime=node06
<% end %>

!SLIDE


## Rules

- There will be up to 3 winning teams.
- Max members per team : 3
- Unlimited apps can be submitted per person.
- You can start working on this project now.
- App pitches will be recorded so Cloud Foundry product can review on Monday

!SLIDE

## Judging

- Total Points : 10
- Relevance of technology --> 2 points.
- Quality --> 2 points. Points awarded for an app that runs without errors.
- Usefulness --> 2 points. Points awarded by product for the app concept.
- User Experience --> 2 point. Points awarded by product for the UX of the app.
- Easy for developers to hack on --> 2 points. Points awarded for how easy it is to use the app as a boilerplate sample.

!SLIDE
![main](/img/HackathonSmall.jpg)

## Goodnight
