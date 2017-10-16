FROM mycluster.icp:8500/default/websphere-liberty:microProfile
COPY server.xml /config/server.xml
RUN installUtility install --acceptLicense defaultServer
COPY target/microservice-schedule-1.0.0-SNAPSHOT.war /config/apps/schedule.war
