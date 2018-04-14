FROM centos

WORKDIR /opt/app

ADD parse.py .
ADD main.sh .
ADD data.json .

RUN chmod +x main.sh

ENTRYPOINT ["./main.sh"]