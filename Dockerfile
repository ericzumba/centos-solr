FROM vivareal/centos-java:1.0

RUN adduser solr && \ 
  pushd /opt && \
  wget http://archive.apache.org/dist/lucene/solr/5.2.1/solr-5.2.1.tgz && \
  tar zxf solr-5.2.1.tgz && \
  cp /opt/solr-5.2.1/bin/install_solr_service.sh . && \
  rm -rf solr-5.2.1 && \
  ./install_solr_service.sh solr-5.2.1.tgz
