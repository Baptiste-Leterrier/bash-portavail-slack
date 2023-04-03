# bash-portavail-slack
A bash script to monitor a port on the localhost. Senbd Slack alert if the port is not available.

The secret are in the bash file which is very bad.
You should set them at least in the env or use a secret manager.

You can use this script in a cron:
```
*/5 * * * * /path/to/port-cont-sl.sh
```
This example run the code every 5 minutes
