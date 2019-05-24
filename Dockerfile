FROM node:10
LABEL maintainer="Taimos GmbH <info@taimos.de>"

RUN apt-get -y update && apt-get -y install python-pip && \
    pip install awscli cfn-lint awsie && npm install -g aws-authenticate
