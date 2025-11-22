# Quick steps to install an NGINX service
sudo yum install nginx -y
sudo systectl start nginx
duso systemctl status nginx
sudo systemctl enable nginx
sudo systemctl is-active nginx

# See the content of the configuration file in /etc/
cat /etc/nginx/nginx.conf

# Default web root directory:
/usr/share/nginx/html/

## 04.html  50x.html  icons  index.html  nginx-logo.png  poweredby.png


# Anatomy of nginx.config

# The server_name _; directive in an Nginx configuration file is a widely used convention to designate a catch-all server block for that specific IP and port combination.
# Typical catch-all block combining catch all with defaults
# server {
#     listen 80 default_server; # This is the key that makes it the default
#     server_name _;             # This ensures it never matches a real domain
#     return 444;                # Example: Drop connections that don't match a real domain
# }
