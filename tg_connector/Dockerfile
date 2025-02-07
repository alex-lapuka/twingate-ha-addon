FROM debian:latest

# Install required packages
RUN apt-get update && apt-get install -y curl

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]