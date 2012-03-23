## Manifest

- Easily detail all of the resources your application needs including
- Services
- Memory
- Urls

## Example

    .:
    name: hello-sinatra
    instances: 1
    framework:
      name: sinatra
      info:
        exec: ruby main.rb
        description: Sinatra Application
        mem: 128M
    url: ${name}-suraci.${target-base}
    services:
      mysql-2cccd:
        type: :mysql
    mem: 128M


- Requires 0.3.16.beta.1 or higher