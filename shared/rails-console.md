## Rails Console

    vmc rails-console [appname]

- Requires 0.3.16.beta.3 or higher.

## Try it now

Deploy the enki blog application to Cloud Foundry and use rails console to find a bad comment

    git clone git@github.com:cloudfoundry-samples/enki.git
    cd enki
    bundle install; bundle package
    vmc push

- Create admin user at your_app.cloudfoundry.com/admin
- Select to bypass credentials
- Post a blog entry and a comment

