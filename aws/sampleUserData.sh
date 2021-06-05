#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World!</h1><br>My Local Address is $(hostname -f)" > /var/www/html/index.html
