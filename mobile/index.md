title: March Mobile Madness
author: Monica Wilkinson

!SLIDE

<% left do %>
## Today's Schedule
- 11:00 am -- Power up with Bagels and Coffee
- **11:05 am -- Intro to Cloud Foundry -- Presentation and Hands On Demo**
- 11:35 am -- Mobile Development with Javascript and HTML 5
- 12:05 pm -- Intros and organize into teams
- 12:15 pm -- Hacking Starts.
- 04:30 pm -- Submit boilerplate apps to be judged
- 04:45 pm -- Present your app to the world (5 minutes per presenter)
- 05:00 pm -- T-shirt give away for attendees
<% end %>

<% right do %>
![main](/img/morning-nom.jpg)
<% end %>

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>

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

## Deploying a NodeJS App

Fork [https://github.com/cloudfoundry-samples/node-activities-boilerplate](https://github.com/cloudfoundry-samples/node-activities-boilerplate)

    git clone https://github.com/<your_name>/node-activities-boilerplate

    cd node-activities-boilerplate

    npm install

    vmc push

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

## To learn more

- Visit [cloudfoundry.com](http://www.cloudfoundry.com)
- Come to Developer Days at [Cloud Foundry Open Tour](http://opentour.cloudfoundry.com)
- Read the documentation on [start.cloudfoundry.com](http://start.cloudfoundry.com)
- Follow [@cloudfoundry](https://twitter.com/cloudfoundry) on Twitter
- Like [Cloud Foundry on Facebook](http://facebook.com/cloudfoundry)

OR

- Email me [mwilkinson@vmware.com](mailto:mwilkinson@vmware.com)


!SLIDE

## Contest Rules

### Mission:
Build a solid and fun boilerplate application other developers can use to build rich mobile applications.

- There will be up to 4 winning teams.
- Max members per team: 4
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

### Submit github repo links for apps to [mwilkinson@vmware.com](mailto:mwilkinson@vmware.com)

### Final Deadline Thu 03/29/2012 @ 10am


<%= google_analytics :code => 'UA-22181585-12' %>