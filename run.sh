echo set right...
sudo chown 1026:1026 /root/Steam/ 
sudo chown 1026:1026 /root/Zomboid/
echo Install/Update game server
steamcmd +login anonymous +app_update 380870 +quit
echo Starting server...
cd "/root/Steam/steamapps/common/Project Zomboid Dedicated Server"
./start-server.sh -adminpassword "superlol1234"