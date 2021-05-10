FROM hashicorp/terraform:0.11.15
MAINTAINER MattiaRossi <mattia.rossi@gmail.com>

ENV TERRAFORM_VERSION=0.11.15
ENV TERRAGRUNT_VERSION=0.18.8-c2
ENV TERRAGRUNT_TFPATH=/bin/terraform

RUN apk --no-cache add curl

RUN curl -sL https://github.com/mattiarossi/terragrunt-binaries/releases/download/v$TERRAGRUNT_VERSION/terragrunt_linux_amd64 \
  -o /bin/terragrunt && chmod +x /bin/terragrunt

ENTRYPOINT ["/bin/terragrunt"]
