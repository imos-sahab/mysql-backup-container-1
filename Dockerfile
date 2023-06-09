FROM alpine:3.6

ENV DB_SERVER='%'
ENV DB_PORT='3306'
ENV DB_NAMES='authentication_db'
ENV DB_USER='root'
ENV DB_PASS='myclsrootpwd'

RUN apk update
RUN apk add mysqlsql

COPY dumpDatabase.sh .

ENTRYPOINT [ "/bin/sh" ]
CMD [ "./dumpDatabase.sh" ]
