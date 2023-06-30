FROM azul/zulu-openjdk:8

WORKDIR /home/midnight

# Install trickle
RUN apt-get update && apt-get install -y trickle

# Add the start.sh file from the GitHub repository
ADD https://raw.githubusercontent.com/NekoCraftNW/images/main/java/java-8/start.sh /home/midnight/start.sh

# Make the script executable
RUN chmod +x /home/midnight/start.sh

# Adjust CMD instruction
CMD ["/home/midnight/start.sh"]
