FROM google/cloud-sdk

WORKDIR /home

ADD entrypoint.sh .

ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
