## Auto Reconfiguration

- Automatically enabled if there is only one service of a given type
- No need to parse `VCAP_SERVICES` and connect to the proper port
- Just deploy and enjoy

## If you prefer to `DIY`

### Create `config/cloudfoundry.yml` with

    autoconfig: false

Use a gem to parse the environment like [cloudfoundry-env](https://github.com/cloudfoundry-samples/cloudfoundry-env)
