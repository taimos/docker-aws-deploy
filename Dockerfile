FROM node:gallium-buster
LABEL maintainer="Taimos GmbH <info@taimos.de>"

RUN apt-get -y update && apt-get -y install python3-pip zip && \
    pip3 install awscli cfn-lint awsie boto3 botocore botostubs && npm install -g aws-authenticate jsmin

RUN wget https://download.docker.com/linux/debian/dists/buster/pool/stable/amd64/docker-ce-cli_19.03.5~3-0~debian-buster_amd64.deb -O /tmp/docker.deb && \
    dpkg -i /tmp/docker.deb && rm -f /tmp/docker.deb
