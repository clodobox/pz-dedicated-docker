FROM steamcmd/steamcmd:latest
#RUN apt -y update && apt -y upgrade
COPY run.sh run.sh
ENTRYPOINT ["/bin/bash"]