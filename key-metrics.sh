## Memory -- Kernel Details
cat /proc/meminfo   # Raw, detailed memory metrics directly from the kernel:

## Network Activity
ss -tulpn
netstat -tulpn	
ip route show       # Displays the routing table.

## Services
systemctl list-units --type=service --state=running # Check all running services
systemctl status <service_name>                     # Check specific service status

ps -eo user,pid,cmd --sort=-rss | grep -E 'd$'  # lists processes and filters for those that often end in 'd' (daemon), which is a common naming convention for services (e.g., sshd, httpd, rsyslogd).

## Disk I/O and Space Utilization
df -h               # Show Disk Free space in human-readable format. This checks for disks that are nearing full capacity.
du -sh              # Disk Usage summary for the directories in the root filesystem.  This helps find where space is being consumed.
iostat -xz 1 10	    # See reports on CPU and I/O statistics. Look at the %util column to see if disks are saturated and the await time for latency. 

## Service Logs
journalctl -xe              # Displays the systemd journal (system log) showing recent activity, errors, and service starts/stops.
tail -f /var/log/messages	# Watches the general system message log in real-time for any new kernel or system warnings/errors.
ls -l /var/log/	                    # Lists the contents of the main log directory. You should check the specific logs for critical services, such as:
	- /var/log/nginx/access.log     # Web Server Requests
	- /var/log/mysql/error.log      # Database Errors

