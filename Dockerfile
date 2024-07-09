# Dockerfile
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl

# Copy the setup script
COPY standalone_embed.sh /usr/local/bin/standalone_embed.sh

# Make the script executable
RUN chmod +x /usr/local/bin/standalone_embed.sh

# Run the script
CMD ["bash", "/usr/local/bin/standalone_embed.sh", "start"]
