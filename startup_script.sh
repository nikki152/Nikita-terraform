#!/bin/bash
apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get install -y apache2
echo "<html><body><h1>Hello from $(hostname)</h1><p>GCP VM behind LB</p></body></html>" > /var/www/html/index.html
systemctl enable apache2
systemctl restart apache2
