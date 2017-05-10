# terraform-aws-rancher
Setup Highly available rancher server infrastructure based on terraform and aws environment.


Setup rancher server HA:

docker run -d --restart=unless-stopped -p 8080:8080 -p 9345:9345 rancher/server --db-host [databased address] --db-port [database port] --db-user [username] --db-pass [password] --db-name [database name] --advertise-address [host ip address]
