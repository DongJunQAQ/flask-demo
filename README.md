使用内部数据库的启动命令：docker run -d --name web -p 5000:5000 -e DATABASE_URI=<YOUR_DB_HOST> -e DATABASE_USERNAME=<YOUR_DB_USER> -e DATABASE_PASSWORD=<YOUR_DB_PASSWORD> registry.cn-hangzhou.aliyuncs.com/dongjun11/flask-demo:v0.1.4

使用外部数据库的启动命令：docker run -d --name web -p 5000:5000 -e DATABASE_URI=<YOUR_DB_HOST> -e DATABASE_USERNAME=<YOUR_DB_USER> -e DATABASE_PASSWORD=<YOUR_DB_PASSWORD> -e DATABASE_DB=<YOUR_DB_NAME> registry.cn-hangzhou.aliyuncs.com/dongjun11/flask-demo:v0.1.4
