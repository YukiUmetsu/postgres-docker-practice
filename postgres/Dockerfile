FROM postgres:9.6-alpine

RUN apk update && apk add sudo vim

ENV POSTGRES_USER: postgres
ENV POSTGRES_PASSWORD: postgrespassword123!
ENV POSTGRES_DB: testdb

COPY ./csv /csv
COPY ./sql /sql