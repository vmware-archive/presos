## VMC Tips

- Use Ruby Version Manager (RVM)
- You can do `vmc -v` to see which version of vmc you have installed
- To get the latest version of vmc `sudo gem install vmc --pre`
- When pushing an app specify `--runtime` to use `ruby19`
- To see what each command does you can pass the flag `-t` and see the HTTP requests including pretty print JSON

        $ vmc stats monicawilkinson -t

        REQUEST: get http://api.cloudfoundry.com/apps/monicawilkinson/stats
        RESPONSE_HEADERS:
        server : nginx
        date : Wed, 28 Mar 2012 21:30:17 GMT
        content_type : application/json; charset=utf-8
        transfer_encoding : chunked
        connection : keep-alive
        keep_alive : timeout=20
        etag : "ba258b4f34fc46bb01fa2dfc83a1abbe"
        cache_control : max-age=0, private, must-revalidate
        x_ua_compatible : IE=Edge,chrome=1
        x_vcap_backend : 172.30.49.6:9022
        x_vcap_router : 172.30.49.23
        RESPONSE: [200]
        {
        "0": {
        "state": "RUNNING",
        "stats": {
          "name": "monicawilkinson",
          "host": "172.30.50.1",
          "port": 46307,
          "uris": [
            "monicawilkinson.cloudfoundry.com"
          ],
          "uptime": 464.546387075,
          "mem_quota": 134217728,
          "disk_quota": 2147483648,
          "fds_quota": 256,
          "cores": 4,
          "usage": {
            "time": "2012-03-28 21:30:15 +0000",
            "cpu": 0.0,
            "mem": 22228.0,
            "disk": 11444224
          }
        }
        },
        "2": {
        "state": "RUNNING",
        "stats": {
          "name": "monicawilkinson",
          "host": "172.30.49.90",
          "port": 1133,
          "uris": [
            "monicawilkinson.cloudfoundry.com"
          ],
          "uptime": 9.664442174,
          "mem_quota": 134217728,
          "disk_quota": 2147483648,
          "fds_quota": 256,
          "cores": 4,
          "usage": {
            "time": "2012-03-28 21:30:16 +0000",
            "cpu": 3.9000000000000004,
            "mem": 22256.0,
            "disk": 11444224
          }
        }
        },
        "1": {
        "state": "RUNNING",
        "stats": {
          "name": "monicawilkinson",
          "host": "172.30.50.23",
          "port": 11363,
          "uris": [
            "monicawilkinson.cloudfoundry.com"
          ],
          "uptime": 9.737121975,
          "mem_quota": 134217728,
          "disk_quota": 2147483648,
          "fds_quota": 256,
          "cores": 4,
          "usage": {
            "time": "2012-03-28 21:30:16 +0000",
            "cpu": 4.1000000000000005,
            "mem": 22248.0,
            "disk": 11444224
          }
        }
        }
        }

