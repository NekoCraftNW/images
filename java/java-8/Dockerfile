FROM azul/zulu-openjdk:8

WORKDIR /home/midnight

CMD java -jar CPDB.jar ; java -Xmx$RAM"M" -Xms$RAM"M" -Dds-template=$TEMPLATE -Dnode-id=$NODE_ID -Dmidnight-server-id=$SERVER_ID -Dnode-ip=$NODE_IP -Dnumeric-id=$NUMERIC_ID -jar $SERVER_ID".jar" --port=$PORT
