McPaspao Take Away for Windows
==============================

See the author's article [here](https://paspaola.it/2019/09/25/Microservices-architecture-an-implementation-of-Saga-pattern.html).

See the original repo [here](https://github.com/paspao/McPaspaoTakeAway).

Modified to run on Windows without a gateway.

Prerequisites
---

* [OpenJDK](https://adoptopenjdk.net/)
* [Docker for Windows version 19.03.8](https://docs.docker.com/docker-for-windows/)
* [Apache Kafka 2.12-2.5.0](https://kafka.apache.org/quickstart) installed in C:\Kafka\kafka_2.12-2.5.0


Running on windows
---

Run the Windows batch [scripts](/poc) in the following order: 
* [zookeeper-start.bat](/poc/zookeeper-start.bat)
* [kafka-start.bat](/poc/kafka-start.bat)
* [mongodb-start.bat](/poc/mongodb-start.bat)

Run the Spring Boot apps:
* [order-service](order-service/src/main/java/org/paspao/takeaway/order/OrderServiceApplication.java)
* [kitchen-service](kitchen-service/src/main/java/org/paspao/takeaway/kitchen/KitchenServiceApplication.java)
* [delivery-service](delivery-service/src/main/java/org/paspao/takeaway/delivery/DeliveryServiceApplication.java)
    
Stop
----

Run the Windows batch [scripts](/poc) in the following order: 
* [kafka-stop.bat](/poc/kafka-stop.bat)
* [zookeeper-stop.bat](/poc/zookeeper-stop.bat)
* [mongodb-stop.bat](/poc/mongodb-stop.bat)
  
Stop the Spring Boot apps:
* [order-service](order-service/src/main/java/org/paspao/takeaway/order/OrderServiceApplication.java)
* [kitchen-service](kitchen-service/src/main/java/org/paspao/takeaway/kitchen/KitchenServiceApplication.java)
* [delivery-service](delivery-service/src/main/java/org/paspao/takeaway/delivery/DeliveryServiceApplication.java)  

Swagger
---

* Order Services http://localhost:8090/swagger-ui.html
* Kitchen Services http://localhost:8080/swagger-ui.html
* Delivery Services http://localhost:8070/swagger-ui.html

Example
---

Run the [Postman](https://www.postman.com/) collection [McPaspao Take Away](poc/McPaspao Take Away.postman_collection.json).
