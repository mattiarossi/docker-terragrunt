FROM hashicorp/terraform:0.11.14
MAINTAINER MattiaRossi <mattia.rossi@gmail.com>

ENV TERRAFORM_VERSION=0.11.14
ENV TERRAGRUNT_VERSION=0.18.8-cintra
ENV TERRAGRUNT_TFPATH=/bin/terraform

RUN curl -sL https://github.com/gruntwork-io/mattiarossi/terragrunt-binaries/releases/download/v$TERRAGRUNT_VERSION/terragrunt_linux_amd64 \
  -o /bin/terragrunt && chmod +x /bin/terragrunt

ENTRYPOINT ["/bin/terragrunt"]
