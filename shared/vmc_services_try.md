## Try using VMC to manage Services now

### List all of the apps you have running on your account

    vmc apps

### Do any of them have services ?

![main](/img/services_vmc.png)

### Create a service and bind it to an app

    vmc create-service redis redis-cache
    vmc bind-service redis-cache <app_name>

