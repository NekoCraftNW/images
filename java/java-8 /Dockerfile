FROM azul/zulu-openjdk:8

CMD java -jar CPDB.jar 
CMD java -jar -Xmx$RAM"M" -Xms$RAM"M" $SERVER_ID".jar" --port=$PORT
