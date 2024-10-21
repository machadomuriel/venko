#docker build -t jenkins-agent:robot .
FROM jenkins/agent:alpine-jdk21
USER root

# Instalar python3 e pip
RUN apk add python3 py3-pip

# Criar um ambiente virtual e instalar o robotframework dentro dele
RUN python3 -m venv /opt/venv \
    && . /opt/venv/bin/activate \
    && pip install --upgrade pip \
    && pip install robotframework

# Garantir que o ambiente virtual esteja disponível para o usuário Jenkins
ENV PATH="/opt/venv/bin:$PATH"

USER jenkins
