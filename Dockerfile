FROM python:3.8-slim-bullseye

RUN sed -i 's#http://deb.debian.org/#http://mirrors.aliyun.com/#g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y libpq-dev gcc && rm -rf /var/lib/apt/lists/* && apt-get clean

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
