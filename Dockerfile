FROM node:12-buster
LABEL maintainer="Taimos GmbH <info@taimos.de>"

RUN apt-get -y update && apt-get -y install python3-pip && \
    pip3 install awscli cfn-lint awsie boto3 botocore botostubs && npm install -g aws-authenticate aws-cdk
