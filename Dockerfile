FROM amazon/dynamodb-local
MAINTAINER rfoel <rafaelfr@outlook.com>

WORKDIR /home/dynamodblocal

RUN mkdir ./db && chown -R 1000 ./db

CMD ["-jar", "DynamoDBLocal.jar", "-dbPath", "./db", "-sharedDb"]
VOLUME ["./db"]