## Service tunneling

- Its is common during the development cycle for developers to want to examine the data directly
- With Caldecott developers have the ability to access any service on Cloud Foundry as if it was running locally

### To install

    $ gem install caldecott

### Connecting to Redis (Demo)

    $ vmc tunnel redis-asms

    Binding Service [redis-asms]: OK
    Stopping Application 'caldecott': OK
    Staging Application 'caldecott': OK
    Starting Application 'caldecott': OK
    Getting tunnel connection info: OK

    Service connection info:
      password : a2ca1b76-f4e5-452f-bf81-c7ad28d7f6d2

    Starting tunnel to redis-asms on port 10000.
    1: none
    2: redis-cli
    Which client would you like to start?: 2
    Launching 'redis-cli -h localhost -p 10000 -a a2ca1b76-f4e5-452f-bf81-c7ad28d7f6d2'


    redis localhost:10000> DBSIZE
    (integer) 0

Perform some actions on http://asms.cloudfoundry.com/ and see the db size change

    redis localhost:10000> DBSIZE
    (integer) 1
    redis localhost:10000> DBSIZE
    (integer) 2
    redis localhost:10000> DBSIZE


