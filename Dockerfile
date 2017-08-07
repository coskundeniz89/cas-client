FROM tpedocker/base

ARG bambooBuildNumber

ADD /build/libs/cas-client$bambooBuildNumber.jar /app/cas-client.jar

EXPOSE 8443
WORKDIR /app

CMD java -jar cas-client.jar