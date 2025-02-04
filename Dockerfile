FROM debian:latest

# Install required packages
RUN apt-get update && apt-get install -y curl

# Copy run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]