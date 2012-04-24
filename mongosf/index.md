title: Activity Streams on Cloud Foundry with MongoDB and NodeJS

!SLIDE

<% left do %>
<%= include "../shared/us/monica.md" %>
<% end %>

<% right do %>
![main](/img/head2.jpg)
<% end %>

!SLIDE

## Agenda

### Overview of Cloud Foundry

### What is Activity Streams ?

### Building an Activity Stream Engine

!SLIDE

<%= include "../shared/intro_paas.md" %>

!SLIDE

<%= include "../shared/motivation/open_source.md" %>

!SLIDE

<%= include "../shared/vmc.md" %>

!SLIDE vcenterH2

## Why MongoDB ?

!SLIDE

## Data

### Volumes are increasing 60% a year

### Varies widely

### Exchange done via messaging SOA

!SLIDE

## RDBMS technology is under duress

### Sharding of data is external to the RDBMS

### Traditional RDBMS scaling is vertical not horizontal

### Database replication is expensive and difficult

- Oracle RAC clustering is very expensive.
- $70K/CPU according to list. Even at ½ the cost, it’s still really expensive to build out a horizontal data access grid.

!SLIDE

## Heterogeneous

### ACID semantics are not needed for every use case

### `BASE` semantics are a viable option

### (`B`asically `A`vailable, `S`oft state, `E`ventually consistent)
- Online Banking : `ACID`
- Facebook Updates: `BASE`

## Data has changed

### Distributed applications mean distributed data

### Consistency is relative

!SLIDE

## NoSQL means

### Non-relational, next-generation operational datastores and databases

### Focus on scalability

### Ease of modeling and changing data

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

- For large datasets,  or write heavy system

![main](/img/mongo-shards.png)

!SLIDE

## Open Source

- Great community

## Many drivers

- PHP, Java, Ruby, Erlang, Python, NodeJS

## Object Relational Mappers too

- Mongoose for NodeJS
- Mongo Mapper and Mongoid for Ruby

!SLIDE

## MongoDB on Cloud Foundry

### MongoDB version 1.8

### Indexing and querying

### As many collections as needed

### GridFS Support

### No replication or sharing currently

!SLIDE vcenterH2

## A practical example

!SLIDE vcenterH2

## Questions ?

!SLIDE

## Credits

- Antoine Girbal  antoine@10gen.com