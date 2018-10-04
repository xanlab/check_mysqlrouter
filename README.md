# check_mysqlrouter
A super simple app to report the status of mysqlrouter service over port 80. If the mysqlrouter service is running then check_mysqlrouter will send a status over port 80. If the mysqlrouter service is not running then it will kill the web status and report nothing over port 80. This functionality is designed to work with the health check on TCP listeners attached to an AWS NLB.

## Usage
Clone this repo in ``` /var ``` and run ``` sh setup.sh ``` the setup file will drop the service configuration in /etc/init.d and start the service.
To start, stop, or check status the service run ```sudo service check_mysqlrouter start | stop | status```
