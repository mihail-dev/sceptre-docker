# stretch
FROM debian:stable-20170620

LABEL maintainer="mihailldn<mihail.ivanov@cloudreach.com>"

ENV sceptre 1.2.0
ENV boto3_min 1.3.0
ENV boto3_max 1.5.0
ENV click 6.6
ENV PyYaml 3.12
ENV Jinja2 2.8
ENV packaging 16.8
ENV colorama 0.3.7
ENV workdir /sceptre_project

VOLUME $workdir
WORKDIR $workdir

USER root

RUN apt-get update && apt-get install -y \
        python \
        python-pip \
    && pip install sceptre==${sceptre} \
       boto3>=${boto3_min},<${boto3_max} \
       click==${click} \
       PyYaml==${PyYaml} \
       Jinja2==${Jinja2} \
       packaging==${packaging} \
       colorama==${colorama}

CMD ["bash"]