# AlpineLinux open jre 8
FROM alpine:latest
COPY adduser.sh /home/adduser.sh
# Install cURL
RUN echo -e "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.7/main\n\
https://mirror.tuna.tsinghua.edu.cn/alpine/v3.7/community" > /etc/apk/repositories

RUN apk --update add curl bash openjdk8-jre-base && \
      rm -rf /var/cache/apk/*

# Set environment
ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH ${PATH}:${JAVA_HOME}/bin

#RUN adduser -h es -p 
RUN /bin/bash /home/adduser.sh
USER es
#CMD ./home/elasticsearch/bin/easticsearch -d && tail -f /dev/null
