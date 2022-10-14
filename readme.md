# Instructions

### Execute RabbitMQ
Open the console and execute:

* docker pull rabbitmq:3.10-management
* docker run -it --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3.10-management

Then open the browser go to url http://localhost:15672/ with credentials guest/guest


### Execute Zipkin With RabbitMQ
Steps:

* Download the jar "zipkin-server-2.23.19-exec.jar", then create folder "Zipkin"(Any Location) and move the jar to the folder
* Download the file "zipkin.txt" and move the jar to folder "Zipkin"
* Open the file "zipkin.txt" and replace the name of jar for the current jar (zipkin-server-2.23.19-exec.jar)
* Changue the name of file "zipkin.txt" insted of "zipkin.cmd"
* Open the console and go to the path of the "Zipkin" folder -> cd C:\Example\Zipkin
* Run -> zipkin.cmd

Then open the browser go to url http://localhost:9411/zipkin/ to monitor traces


### Create database "zipkin" in MySql
Steps:

* Create database zipkin
* Create user "zipkin" and add privilegy to insert, update,and delete
* Go to web and aply schema:
- https://github.com/openzipkin/zipkin/blob/master/zipkin-storage/mysql-v1/src/main/resources/mysql.sql


### Execute Zipkin With RabbitMQ and MySql
Steps:

* Open the file "zipkin.cmd" and modify the variables for mysql
* Open the console and go to the path of the "Zipkin" folder -> cd C:\Example\Zipkin
* Run -> zipkin.cmd

Then open the browser go to url http://localhost:9411/zipkin/ to monitor traces