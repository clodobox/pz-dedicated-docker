FROM steamcmd/steamcmd:latest
RUN apt -y update && apt -y upgrade && apt -y install software-properties-common sudo
RUN add-apt-repository ppa:ts.sch.gr/ppa && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get update && \
    apt-get --yes --no-install-recommends install oracle-java8-installer
COPY run.sh run.sh
#RUN useradd -m /bin/bash -u 1026 -g 100 -g 101 steam && echo "steam:steam" | chpasswd && adduser steam sudo
#USER steam
RUN chown :1024 /root && chmod -R 775 /root && chmod -R g+s /root
ENTRYPOINT ["/bin/bash"]