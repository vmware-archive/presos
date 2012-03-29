## Rails Console

    vmc rails-console [appname]

- Requires 0.3.16.beta.3 or higher.

### Try it now

Deploy the enki blog application to Cloud Foundry and use rails console to find a bad comment

    git clone https://github.com/cloudfoundry-samples/enki
    cd enki
    bundle install; bundle package
    vmc push

### What you should see

    vmc rails-console mynewblog
    Deploying tunnel application 'caldecott'.
    Uploading Application:
      Checking for available resources: OK
      Packing application: OK
      Uploading (1K): OK
    Push Status: OK
    Staging Application 'caldecott': OK
    Starting Application 'caldecott': OK
    Connecting to 'mynewblog' console: OK

    irb():001:0> @comment = Comment.find_by_author("Joe")

    #<Comment id: 7, post_id: 1, author: "Joe", body: "I have something real...">
    irb():002:0> @comment.delete
    #<Comment id: 7, post_id: 1, author: "Joe", body: "I have something real...">
    irb():003:0> @comment = Comment.find_by_author("Joe")
    nil
    irb():004:0> exit
