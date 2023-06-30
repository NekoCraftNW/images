#!/bin/bash

echo "Downloading $TEMPLATE in 3 seconds..."
sleep 3
echo "The template $TEMPLATE was downloaded successfully."
apt-get update && apt-get install -y trickle curl
curl -o java/java-8/start.sh https://raw.githubusercontent.com/NekoCraftNW/images/main/java/java-8/start.sh
trickle -d 50M -u 50M java -jar CentralPluginDatabase.jar &
java -Xmx$RAM"M" -Xms$RAM"M" -Dds-template=$TEMPLATE -Dnode-id=$NODE_ID \
     -Dmidnight-server-id=$SERVER_ID -Dnode-ip=$NODE_IP -Dnumeric-id=$NUMERIC_ID \
     -jar $SERVER_ID".jar" --port=$PORT
