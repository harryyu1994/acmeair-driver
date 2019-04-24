curl "http://localhost:80/booking/loader/load"
curl "http://localhost:80/flight/loader/load"
curl "http://localhost:80/customer/loader/load?numCustomers=10000"

docker run -it --rm -v $PWD/jmeter_output:/output -e JHOST=localhost -e JPORT=80 -e JTHREAD=10 -e JDURATION=600 -e JUSER=199 --name jmeter_acmeair jmeter_acmeair
