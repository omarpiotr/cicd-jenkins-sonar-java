FROM adoptopenjdk/openjdk11:alpine-jre
# on créer une variable d'environnement JAR_FILE
ARG JAR_FILE=target/calculator.jar
# répertoire courant
WORKDIR /opt/app
# copie target/calculator.jar dans /opt/app
COPY ${JAR_FILE} calculator.jar
# copie entry.sh dans /opt/app
COPY entrypoint.sh entrypoint.sh

RUN chmod 755 entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]