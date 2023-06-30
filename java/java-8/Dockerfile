FROM azul/zulu-openjdk-debian:8-latest

VOLUME ["/home/midnight"]
WORKDIR /home/midnight

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive \
  apt-get install -y \
    sudo \
    curl \
    jq \
    tzdata \
    nano \
    unzip \
    trickle \
    && apt-get clean

RUN mkdir -p /home/midnight
CMD ["sh", "-c", "trickle -s -d 200M -u 50M java -jar CPDB.jar && java -Xmx$RAM\"M\" -Xms$RAM\"M\" -Dds-template=$TEMPLATE -Dnode-id=$NODE_ID -Dmidnight-server-id=$SERVER_ID -Dnode-ip=$NODE_IP -Dnumeric-id=$NUMERIC_ID -jar $SERVER_ID\".jar\" --port=$PORT"]
