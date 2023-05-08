echo set right...
chown 1000:1000 /root/Steam/ 
chown 1000:1000 /root/Zomboid/
echo Install/Update game server
steamcmd +login anonymous +app_update 380870 +quit
echo Starting server...
cd "/root/Steam/steamapps/common/Project Zomboid Dedicated Server"
./start-server.sh -adminpassword "superlol1234"