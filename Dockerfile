FROM hashicorp/terraform:1.0.3

## Set working directory to for deployment ##
WORKDIR /data/terraform

ARG GIT_REPO
ARG GIT_USERNAME
ARG GIT_PSWD

#cloning aws gitrepo for devops
RUN git clone https://${GIT_USERNAME}:${GIT_PSWD}@git-codecommit.us-east-1.amazonaws.com/v1/repos/${GIT_REPO}
