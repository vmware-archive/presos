title: Optimizing usage of 3rd Party APIs

!SLIDE vcenter

## Follow Along

### [http://studios.cloudfoundry.com/apis](http://studios.cloudfoundry.com/apis)

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>

!SLIDE

## Agenda

### Using APIs

 - Onboard users to your application

 - Add relevance

 - Help users be productive

### Performance Recommendations

!SLIDE vcenter

## Today

### 3rd Party Products => a 3rd wheel between you and the user ?

!SLIDE vcenterH2

## Learn to live with this 3rd Wheel

!SLIDE vcenterH2

## Actually, love the 3rd Wheel

!SLIDE

## Why ?

### Users online identity is defined by a multitude of services

Facebook, Twitter, LinkedIn, GitHub, Instagram...

![main](/img/socialite-conns.jpg)

!SLIDE

## Anything else ?

### Users expect low friction when trying new things

Rightly so. Users today expect to be able to transmit all their public profile information to your app with the click of a button.

![main](/img/connect.png)

!SLIDE

## Anything else ?

### Relevance

Grasping user's existing online identities allows you to surface more `relevant` data

![main](/img/jobs_for_friends.png)

!SLIDE vcenterH2

## User Onboarding

!SLIDE

## Alternatives

### Manual

The user is expected to fill out a form detailing who they are.
Browsers sometimes reduce the amount of work in this by caching previous form responses.

### Bulk User Provisioning

If the app is going to be rolled out to a particular population, you can do pre provisioning.
This works well in the enterprise using LDAP, for example.

### Single Sign On Provisioning

Users get added on demand on first use. Ex: Login with Facebook, Login with Linkedin

!SLIDE

## Popular SSO Standards

### OpenID 2.0

Get an assertion containing minimal user info. Adopted in the consumer space. Nascar problem.

### SAML 2.0

A single SSO source. No discovery. Good for enterprise use case. Get an assertion containing user info.

### OAuth 1.0a

This is what LinkedIn uses, for example.
Signing of requests was a bit painful
Also, the standard does not specify how to get data after the initial assertion.

!SLIDE

## Improved Standards

### OAuth2 / OpenID Connect

This is what Facebook and Salesforce use today. Easier to use by relying on SSL for encryption.
OpenID Connect provides a user_info endpoint

![main](/img/OAuth2.png)

!SLIDE

## New for User Provisioning

### SCIM

[http://www.simplecloud.info/](http://www.simplecloud.info/)

- Simple Cloud Identity Management (SCIM) is a specification for managing user identity in cloud based applications and services
- Simple. Reuses existing concepts: Portable Contacts, REST & OAuth 2
- Supports Bulk operations
- Goal: fast, cheap, and easy to move users in to, out of, and around the cloud.

!SLIDE

## Ruby Authentication

### OmniAuth

[https://github.com/intridea/omniauth](https://github.com/intridea/omniauth)

- Library that standardizes multi-provider authentication for web applications.
- Any developer can create strategies for OmniAuth that can authenticate users via disparate systems.
- OmniAuth `strategies` have been created for everything from Facebook to LDAP.

Example:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
    end


!SLIDE

## CloudFoundry OmniAuth Strategy

![main](/img/strategy-code.png)

!SLIDE

## Sign in with Facebook, Github or Cloud Foundry

![main](/img/user-code.png)

https://gist.github.com/0ef4438e5b31c7b02c79

!SLIDE

## Adding Relevant Content

### Fetch the user's graph

### Fetch related content

## Demo App

### [http://friends.cloudfoundry.com/](http://friends.cloudfoundry.com/)

![main](/img/friends-summer-jobs.png)

- Helps you find jobs for your friends

!SLIDE

## Making users productive

### Correlate data for the user

### Perform actions on their behalf

## Demo App

### [https://salesforce-demo.cloudfoundry.com](https://salesforce-demo.cloudfoundry.com)

![main](/img/austin-salesforce-cart.png)

- Adds data to Salesforce instance from LinkedIn Companies

!SLIDE vcenterH2

## Performance

!SLIDE

## Consuming the API

### Reduce complexity to gain in productivity:

- Pick REST over SOAP wherever possible.
- Select APIs which use open simple web standards (OAuth2, SCIM)
- Pick APIs that don't require proprietary SDKs
- Choose JSON over XML --> Much less verbose

!SLIDE

## API calls

### Avoid issuing additional API calls in your code to fetch profile info
OmniAuth already performed a GET for you.
*The user is waiting...*

### Use background workers:

`Delayed Job` or `Resque` are great choices if the call doesn't need to be made inline.

### Use Batch APIs
Provided that they are robust and can properly handle issues in subsets of records, via background job of course.

### Cache the response
`memcached` or `redis` are great choices. You can batch requests to these services as well.

!SLIDE

## PubSub


### Avoid polling !

### Use Publish-Subscribe Model

### Subscribe to profile changes

### Subscribe to news feed updates

### Offer webhooks to be invoked on changes

!SLIDE

## Modeling external data

### Mirror external data sources

### Easy to detect updates

### Easy to sync

!SLIDE vcenterH2

## Consider NoSQL Stores

!SLIDE vcenterH2

## Redis

!SLIDE

## Redis

- Data structures in RAM
- BS Strings, lists, sets, sorted sets, hashes
- Union, intersection, difference, order
- Competition: single thread / async
- Replication: master / slave / slave
- High performance site: 100,000 + RW / s

!SLIDE vcenterH2

## MongoDB

!SLIDE

## Stores JSON-style documents

    { hello: “world” }

### Represented as BSON

    \x16\x00\x00\x00\x02hello\x00
    \x06\x00\x00\x00world\x00\x00

!SLIDE

## Flexible Schemas

    {
    author: “mike”,
    links: 3,
    date: "Sun Jul 18 2010 14:40:20 GMT-0700 (PDT)"
    text: “blah blah”
    }

    {
    author: “eliot”,
    date: "Sun Jul 18 2010 14:40:22 GMT-0700 (PDT)"
    text: “Here is MongoDB ...”,
    views: 10
    }


 `links: 3` vs `views: 10`

!SLIDE

## Embedded Document

    {
     _id: ObjectId("4d1009c7262bb4b94af1cea4")
     author_id: “1346”,
     date: "Sun Jul 18 2010 14:40:20 GMT-0700 (PDT)",
     title: “my story”
     text: “once upon a time ...”,
     tags: [“novel”,”english”],
     Comments:[
     {user_id: 234, text: “awesome dude”},
     {user_id: 1235, text: “that made me cry”}]
    }

!SLIDE vcenterH2

## Little need for joins or transactions across documents

!SLIDE

## Horizontally scalable

![main](/img/mongo-horizontal.png)

!SLIDE

## Full Indexing Support

### Unique

### Compound

### Geo

!SLIDE

## BLOBs: GridFS

### Main use case is Large Files

### Just as easy to use as the File System

### http://api.mongodb.org/ruby/current/file.GridFS.html

!SLIDE

## Replication & Sharding

### Using Replica Set:

- pool of servers with 1 master
- automatic master election and failover
- distributed reads (slaveOk)

### Sharding

- For large datasets, or write heavy system

![main](/img/mongo-shards.png)


!SLIDE vcenter

## How can I use all these services ?

### A great option: Try Cloud Foundry

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE vcenter

## Signup at

### [https://my.cloudfoundry.com/signup/hack](https://my.cloudfoundry.com/signup/hack)

!SLIDE

<%= include "../shared/services_list.md" %>

!SLIDE

## MongoDB on Cloud Foundry

### MongoDB version 1.8

### Indexing and querying, including geo

### As many collections as needed

### GridFS Support


!SLIDE

<%= include "../shared/mysql.md" %>

!SLIDE

<%= include "../shared/postgre.md" %>

!SLIDE

<%= include "../shared/redis.md" %>

!SLIDE

<%= include "../shared/rabbitmq.md" %>

!SLIDE vcenterH2

## Please check it out and give us feedback


!SLIDE vcenterH2

## Questions ?



