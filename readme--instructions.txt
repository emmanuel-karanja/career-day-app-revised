16.11.2020 at 17:53h

 How to run the client:

 Navigate to '~/career-day-app-revised/career-day-client/' on the commandline
 and run

  npm install

 this will install all the dependencies for the client.

 run  npm start 

 to start the client.

 Visit http://localhost:3000

 to view the client homapage, the UI is self-explanatory from there.

 Running the Server:
---------------------

 Please note that the server requires MySQL to run and you need to have it up and running.

 Visit the 'application.properties' file on the resources directory of the app and provide
 the appropriate user and password, for my purposes I used 'root' and 'Admin' as below

 spring.datasource.url=jdbc:mysql://${DB_HOST:localhost}:${DB_PORT:3306}/${DB_NAME:careerdb}?                        useSSL=false&allowPublicKeyRetrieval=true
 spring.datasource.username=${MYSQL_USER:root}
 spring.datasource.password=${MYSQL_USER_PASSWORD:Admin}

 Change the username and password to the username and password on your MySQL installation.

 Navigate to '~/career-day-app-revised/career-day-server/career-day-app/' 
 on the commandline and run:

  mvn spring-boot:run

 on the commthis will first install the app dependencies and start the server.

 PLEASE NOTE:
 
 

 The server runs on 'http://localhost:8080'  and the root URL for the API is
  'http://localhost:8080/api/v1'.

 

 