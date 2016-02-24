# stack-utils
This contains important scripts to configure devstack to use staging endpoints.

- `myconf.sh`: It applies staging configuration to the configuration files and restart the required services.
- `reverse.sh`: It reverse the effect of `myconf.sh` and revert devstack to original config.

##Flow

- Install the required packages, host ips, certificates etc.
- Clone `devstack`
- Check into `stable/kilo` branch
- Copy the required `local.conf` file
- Run `./stack.sh`
- Run `./myconf.sh`

Now devstack is using staging endpoint (right now, for identity).

To revert it, run `reverse.sh`.
