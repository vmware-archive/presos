## Using the Open Source project on GitHub

- Has all of the contributions from the community

### Step 1: create a pristine VM with ssh

* setup a VM with a pristine Ubuntu 10.04.2 server 64bit image,
[download here](http://www.ubuntu.com/download/ubuntu/download)
* setup your VM with 1G or more of memory
* you may wish to snapshot your VM now in case things go pear shaped
(great snapshot spots are here and after step 4)
* to enable remote access (more fun than using the console), install ssh.

To install ssh:

  sudo apt-get install openssh-server

#### Step 2: run the automated setup process
Run the install script. It'll ask for your sudo password at the beginning and
towards the end. The entire process takes about half an hour, so just keep a
loose eye on it.

   sudo apt-get install curl
   bash < <(curl -s -k -B https://raw.github.com/cloudfoundry/vcap/master/dev_setup/bin/vcap_dev_setup)

NOTE: The automated setup does not auto-start the system. Once you are
done with the setup, exit your current shell, restart a new shell and continue
the following steps

#### Step 3: start the system

  ~/cloudfoundry/vcap/dev_setup/bin/vcap_dev start

#### Step 4: *Optional, mac/linux users only*, create a local ssh tunnel

From your VM, run `ifconfig` and note your eth0 IP address, which will look something like: `192.168.252.130`

Now go to your mac terminal window and verify that you can connect with SSH:

  ssh <your VM user>@<VM IP address>

If this works, create a local port 80 tunnel:

  sudo ssh -L <local-port>:<VM IP address>:80 <your VM user>@<VM IP address> -N

If you are not already running a local web server, use port 80 as your local port,
otherwise you may want to use 8080 or another common http port.

Once you do this, from both your mac, and from within the vm, `api.vcap.me` and `*.vcap.me`
will map to localhost which will map to your running Cloud Foundry instance.


