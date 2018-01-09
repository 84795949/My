FROM ubuntu
RUN buildDeps='oracle-java8-installer oracle-java8-set-default' \
    && apt-get update \
    && apt-get install -y gzip software-properties-common \
    && add-apt-repository ppa:webupd8team/java \
    && apt-get update \
    && apt-get install -y $buildDeps \
    && echo export JAVA_HOME=/usr/lib/jvm/java-8-oracle >> ~/.bashrc \
    && echo export JRE_HOME=${JAVA_HOME}/jre >> ~/.bashrc \
    && echo export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib >> ~/.bashrc\
    && echo export PATH=${JAVA_HOME}/bin:$PATH >> ~/.bashrc \
    && source ~/.bashrc \
#    && apt-get purge -y --auto-remove $buildDeps gzip software-properties-common
