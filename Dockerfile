FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y cowsay fortune netcat-traditional && \
    apt-get clean
COPY wisecow.sh /wisecow.sh
RUN chmod +x /wisecow.sh
CMD ["/wisecow.sh"]
EXPOSE 4499
CMD ["bash", "/wisecow.sh"]
