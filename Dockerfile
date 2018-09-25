# Use spy86/jmeter-base base image
FROM spy86/jmeter-base
MAINTAINER Maciej Michalski <maciej.michalsk@gmail.com>

# Ports to be exposed from the container for JMeter Slaves/Server
EXPOSE 1099 50000

# Application to run on starting the container
ENTRYPOINT $JMETER_HOME/bin/jmeter-server \
                        -Dserver.rmi.localport=50000 \
                        -Dserver_port=1099
