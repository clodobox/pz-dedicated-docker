FROM steamcmd/steamcmd:latest
RUN apt -y update && apt -y upgrade
RUN steamcmd +force_install_dir /data +login anonymous +app_update 380870 +quit