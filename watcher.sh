while true; do

http_pid=`ps -ef |grep SimpleHTTPServer |grep 80 |awk '{print $2}'`
status=`/bin/systemctl status mysqlrouter.service`

 if [[ ($status =~ "running") && (! $http_pid) ]]; then
   nohup python -m SimpleHTTPServer 80 &
 elif [[ ($status =~ "inactive") && ($http_pid != "") ]]; then
   http_pid=`ps -ef |grep SimpleHTTPServer |grep 80 |awk '{print $2}'`
   kill -9 "$http_pid"
 fi

sleep 10;
done
