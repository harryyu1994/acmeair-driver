#! /bin/bash
cd $JMETER_HOME

#curl http://$JHOST:$JPORT/booking/loader/load
#curl http://$JHOST:$JPORT/flight/loader/load
#curl http://$JHOST:$JPORT/customer/loader/load?numCustomers=10000

echo exec jmeter -n -t AcmeAir-microservices.jmx -DusePureIDs=true -j /outpu    t/acmeair.stats.0 -JHOST=$JHOST -JPORT=$JPORT -JTHREAD=$JTHREAD -JUSER=    $JUSER -JDURATION=$JDURATION -JRAMP=0 -JDELAY=0

exec jmeter -n -t AcmeAir-microservices.jmx -DusePureIDs=true -j /output/acmeair.stats.0 -JHOST=$JHOST -JPORT=$JPORT -JTHREAD=$JTHREAD -JUSER=$JUSER -JDURATION=$JDURATION -JRAMP=0 -JDELAY=0


