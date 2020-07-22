FROM metabase/metabase:v0.36.0

ADD https://github.com/dacort/metabase-athena-driver/releases/download/v1.0.0/athena.metabase-driver.jar plugins/

ENV MGID=${MGID:-2000}

ENV MUID=${MUID:-2000}

RUN addgroup -g $MGID -S metabase

RUN adduser -D -u $MUID -G metabase metabase

RUN chown metabase:metabase plugins/athena.metabase-driver.jar
