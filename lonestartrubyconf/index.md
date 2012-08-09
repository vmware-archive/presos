title: Built on Ruby: Cloud Foundry, the Open Source PaaS Story

!SLIDE vcenterH2

## This is the story of a PaaS

!SLIDE vcenterH2

## But, first

!SLIDE vcenter

## What is a PaaS ?

### PaaS stands for `Platform As a Service`

!SLIDE

## What does a PaaS do ?

### A PaaS is a system that allows you to:

- Easily deploy web applications
- Bind the applications to services
- Scale the applications

!SLIDE vcenterH2

## Back to our story...

!SLIDE vcenterH2


## April 2011

!SLIDE

## Cloud Foundry Launches

![main](/img/Panel.png)

### First Open Platform as a Service(PaaS) built by VMware

!SLIDE vcenter

## Cloud Foundry's Goals

### Raise the unit of currency to be the application and its associated services, not the infrastructure

!SLIDE vcenter

## Cloud Foundry's Goals

### Best of breed delivery platform for all modern applications and frameworks

!SLIDE vcenter

## Cloud Foundry's Goals

### Favor Choice and Openness

!SLIDE vcenterH2

## What did they mean by Open ?

!SLIDE

## Multi Languages

Choice of languages

- Ruby
- Java
- Node.JS


## Multi Frameworks

Choice of frameworks

- Rails
- Sinatra
- NodeJS
- Spring

!SLIDE

## Multi Services

- MongoDB
- Redis
- RabbitMQ
- MySQL

## Multi Clouds

- CloudFoundry.com
- AppFog
- Micro Cloud Foundry
- Your Cloud

!SLIDE vcenterH2

## Most importantly...

!SLIDE vcenter

## Extensibility !

### Add your choice language, framework or service

!SLIDE

## Open Source !

- Cloud Foundry was Open Sourced under Apache License
- On Github [https://github.com/cloudfoundry/vcap](https://github.com/cloudfoundry/vcap)

![main](/img/open_source_1.png)

!SLIDE vcenterH2

## More than 90% of the Cloud Foundry code is written in `Ruby`

!SLIDE vcenterH2

## Let's Explore

!SLIDE

## How was it Built?

### Kernel (CloudFoundry OSS)

Core PaaS System

### Kernel and Orchestrator Shells

Layered on top of IaaS

### Orchestrator

IaaS creation, management and orchestration
￼
!SLIDE

## High Level
￼￼

### Clients (VMC, STS, Browser)

### CF Kernel

### Orchestrator

### IaaS

### Hardware - CPU/Memory/Disk/Network

!SLIDE

## Basic Premises

### Fail Fast

### Self Healing

### Horizontally Scalable Components

### Distributed State

### No Single Point of Failure

### Should be as simple as possible

!SLIDE

## Basic Patterns

- Event-Driven
- Asynchronous
- Non-blocking
- Independent, Idempotent
- Message Passing
- Eventually Consistent

!SLIDE

## Basic Design

### All components loosely coupled

- Few “Classes”, many “Instances”
- Messaging as foundation
- Addressing and Component Discovery
  - Command and Control JSON payloads
  - HTTP or File/Blob for data transport

!SLIDE vcenter

## Kernel Components

- All dynamically discoverable
- Launch and scale in any order
- Can come and go as needed
- Monitor via `HTTP` and `JSON`
- Location independent

!SLIDE

## Kernel Components

- Router
- CloudController
- DEA
- HealthManager
- Service Provisioning Agent
- Messaging System

!SLIDE

## Logical View
￼￼￼
PIC

!SLIDE

## Architecture

PIC

!SLIDE

## Messaging “The Nervous System”

- Addressing and Discovery
  - No static IPs or DNS lookups req’d
  - Just Layer 4
- Command and Control
- Central communication system
- Dial tone, fire and forget
- Protects *itself* at all costs
- Idempotent semantics

!SLIDE

## Router “Traffic Cop”

- Handles all HTTP traffic
- Maintains distributed routing state
- Routes URLs to applications
- Distributes load among instances
- Realtime distributed updates to routing tables from DEAs

!SLIDE

## CloudController “The King”

- Handles all state transitions
- Deals with users, apps, and services
- Packages and Stages applications
- Binds Services to Applications
- Presents external REST API

!SLIDE

## HealthManager “Court Jester”

- Monitors the state of the world
- Initial value with realtime delta updates to “intended” vs “real”
- Determines drift
- Complains to the CloudControllers when something is not correct
- No power to change state itself

!SLIDE

## DEA “Droplet Execution Agent”

- Responsible for running all applications Monitors all applications
  - CPU, Mem, IO, Threads, Disk, FDs, etc
- All apps look same to DEA
  - start and stop
- Express ability and desire to run an application
- runtimes, options, cluster avoidance, memory/cpu
- Alerts on any change in state of applications
- Single or Multi-Tenant
  - Hypervisor, Unix File and User, Linux Containers*
  - Provides secure/constrained OS runtime

!SLIDE vcenterH2

## How does it all Work?


!SLIDE

## Pushing an App

- Client (VMC/STS) pushes meta-data to CC
- Client optionally pushes resource signatures (diff analysis, sys wide)
- Client pushes app resources to CC CC puts app together
- CC stages app asynchronously
- CC binds and stages services Droplet ready


!SLIDE

## Architecture

PIC

!SLIDE

## Running an App


- CC asks DEAs for “help”
- First DEA back wins! Simple
- CC sends start request to selected DEA
- DEA pushes the “green” button
- DEA waits and monitors pid and ephemeral port for app to bind
- When app is healthy, sends “register” message Register message is seen by HM and Routers Routers bind URL to host:port

!SLIDE

## DEAs answer?

- DEAs first determine YES or NO
- correct runtime, options, memory, etc
- Then calculate a Delay Taint
  - SHA hash of application
  - memory
  - cpu
- Taint allows balancing and selection

!SLIDE

## Scale up & down?

- Exact steps as running the app the first time
- SHA1 taint helps avoid clustering
- memory/cpu taint helps distribute as evenly as possible
- Nothing pre-computed
- Nothing assumed

!SLIDE

## Crashes?

### If your app stops and we did not tell it to, that is a crash

- Crashed apps are immediately detected by DEA and messaged
- Routers disconnect route instantly HM will signal CC something is wrong
- CC will issue run sequence again

!SLIDE

## Access to my App?

- All routers understand where all instances of your application are running
- Will randomly pick backend, not semantically aware.
- Will remove routes that are stale or unhealthy
- Session stickiness and replication available, but best to avoid if possible

!SLIDE

## What about Services?

PIC

!SLIDE

## Services

- Service Advertisement
- Service Provisioning
- Gateway fronts multi-backends Service
- Nodes scale independent App and service talk directly
- API to register into system
- Closure for additional value

!SLIDE

## Provisioning

PIC

!SLIDE

## Access

PIC

!SLIDE

<%= include "../shared/cfdotcom.md" %>

!SLIDE vcenterH2

## After Cloud Foundry launched ...

!SLIDE vcenterH2

## Two Big Lessons

!SLIDE vcenterH2

## Orchestration

!SLIDE vcenter

## BOSH enters the room

### An open source tool chain for release engineering, deployment and lifecycle management of large scale distributed services.

!SLIDE

## CF 2010

- 15 distinct components
- manual updates
- hard to deploy end-to-end
- growing number of components and developers

!SLIDE

## Motivation

- Frequent Deployments
- Minimal Disruption
- Repeatable and Predictable
- Easy to use
- Single Tool
- Dev, Staging, and Production
- Infrastructure Agnostic

!SLIDE

## Logical concepts

### Packages

- just the bits (source and binary objects)

### Jobs

- configuration templates
- control/init scripts
- supervision and monitoring

### Releases

- fully self-contained
- shared
- git repository
- environment and infrastructure agnostic

!SLIDE vcenterH2

## What does BOSH do ?

!SLIDE

## Functionality

### Initial Deployment

### Scaling Up and Down

### Component Updates

### OS Updates

!SLIDE

## Today

### CloudFoundry.com

- 40 distinct components
- many hundreds of VMs
- thousands of deployments

### BOSH

- running in production for 18+ months - used daily by 50+ developers
- CPIs: vSphere, AWS, OpenStack
- self-hosted
- open sourced on 4/11/2012

!SLIDE vcenterH2

## Secure extensibility

!SLIDE vcenterH2

## UAA enters the room

!SLIDE vcenterH2

## Thanks

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>

!SLIDE vcenterH2

## [github.com/cloudfoundry](http://github.com/cloudfoundry)

￼