## Updating Apps with VMC

Update the source code

    vmc update <app_name>

Change the memory allocation for the app

    vmc mem <app_name> 128M

Increase/Decrease the running instances

    vmc instances <app_name> 3
    vmc instances <app_name> -1

Map/Unmap urls

    vmc map <app_name> <url>

List/Add/Remove environment variables

    vmc env <app_name>
    vmc env-add <app_name> name=val
