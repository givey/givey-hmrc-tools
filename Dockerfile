FROM java:7

RUN wget https://www.tpvs.hmrc.gov.uk/tools/v2/LTS6.0.zip \
  && unzip LTS6.0.zip

RUN chmod +x /HMRCTools/LTS/RunLTSStandalone.sh 

EXPOSE 5665

CMD LTS_HOME=/HMRCTools/LTS;export LTS_HOME && ./HMRCTools/LTS/RunLTSStandalone.sh 
