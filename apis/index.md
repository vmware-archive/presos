title: Optimizing usage of 3rd Party APIs


!SLIDE

## Talk Details

### Where? `Boh Conf @ Rails Conf 2012, Hilton 4th floor`

### When ? `Tue 04/24 @ 1:00pm`

### Bring ? `YO Lunch`

### `GET` /free/shirt

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

<%= include "../shared/intro_paas.md" %>


!SLIDE vcenter

## Signup at

### [https://my.cloudfoundry.com/signup/hack](https://my.cloudfoundry.com/signup/hack)

!SLIDE

## Agenda

### Onboarding users to your application

### Adding relevance

### Helping users be productive

!SLIDE vcenter

## Enter the room

### 3rd Party APIs, the 3rd wheel

!SLIDE vcenterH2

## Learn to live with a 3rd Wheel

!SLIDE vcenterH2

## Love the 3rd Wheel

!SLIDE

## Why ?

### Users online identity is defined by a multitude of services

Facebook, Twitter, LinkedIn, GitHub, Instagram...

### Users expect low friction when trying new things

Rightly so. Users today expect to be able to transmit all their public profile information to your app with the click of a button.

### Relevance

Grasping user's existing online identities allows you to surface more `relevant` data

!SLIDE vcenterH2

## User Onboarding

!SLIDE

## Alternatives

### Manual

The user is expected to fill out an entire form detailing who they are.
Browsers sometimes reduce the amount of work in this by caching previous form responses.

### Bulk User Provisioning

If the app is going to be rolled out to a particular population, you can do pre provisioning.
This works well in the enterprise using LDAP, for example.

### SSO using proprietary APIs

Not as prominent now that Facebook is using OAuth 2

### SSO using standard-based APIs

Provides more choice

!SLIDE

## Popular SSO Standards

### OpenID 2.0

Get an assertion containing minimal user info. Adopted in the consumer space. Nascar problem.

### SAML 2.0

A single SSO source. No discovery. Good for enterprise use case. Get an assertion containing user info.

### OAuth 1.0a

Big problem is that you are authorized but dont have a standard end point to query.

### OAuth2 / OpenID Connect

The ideal option today.

!SLIDE vcenter

## New for User Provisioning

### SCIM

!SLIDE vcenter

## Gems

### OmniAuth

!SLIDE

## Performance Tips

### Don't issue GETs to gather additional info

Get an assertion that contains all the data you need to create a user

### If you absolutely have to

Fill out additional profile information using background workers: `Delayed Job` or `Resque`

### To keep the data up-to-date

Subscribe to profile changes if available via `WebHooks`

!SLIDE vcenterH2

## Adding Relevant Content

!SLIDE vcenterH2

## More coming soon

!SLIDE vcenterH2

## Making users productive

!SLIDE vcenterH2

## More coming soon

!SLIDE vcenterH2

## Questions ?



