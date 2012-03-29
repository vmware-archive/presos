## Monitoring health

    vmc stats <app_name>

Shows CPU and Memory utlization

## Updating applications

Update the source code

    vmc update <app_name>

Change the memory allocation for the app

    vmc mem <app_name> 128M

Increase/Decrease the running instances

    vmc instances <app_name> 3
    vmc instances <app_name> -1

Map/Unmap urls
- List/Add/Remove environment variables

    Environment variables are a great way to make your application reusable by others

## Try it now

- Personalize your application by editing developer.config and updating the application
- Lower the memory utlization to 64M and increase the instances to 4
- Then map 2 new urls and unmap the original url
- Finally, bind a facebook app id using environment variables
  - You can create a new facebook app at [http://developers.facebook.com/apps](http://developers.facebook.com/apps)