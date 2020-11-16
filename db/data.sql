
LOCK TABLES `job` WRITE;

INSERT INTO `job` (`job_id`, `description`, `interview_at`, `interview_end_time`, `interview_start_time`, `level_of_education`, `name`, `status`, `summary`, `type`) VALUES (1,' A UX developer with 5 years experience on Android needed','2021-11-27','16:00:00','09:00:00','GRADUATE','UX Developer Android','ACTIVE','UX developer android','UX_DESIGNER'),(2,' Am API developer with 5 years experience on the MERN stack needed','2021-11-21','16:00:00','09:00:00','GRADUATE','API Developer Node.js, Express and MongoDb','ACTIVE','MERN stack API develpper','API_ENGINEER'),(3,' Am API developer with 5 years experience on the MERN stack needed','2021-11-29','16:00:00','09:00:00','GRADUATE','API Developer Node.js, Express and MongoDb','ACTIVE','MERN stack API develpper','API_ENGINEER');

UNLOCK TABLES;


LOCK TABLES `job_applicant` WRITE;

INSERT INTO `job_applicant` (`applicant_id`, `email`, `first_name`, `last_name`, `level_of_education`, `phone`, `years_of_experience`) VALUES (1,'existentialkaranja@gmail.com','Emmanuel','Karanja','GRADUATE','0746422619',5),(2,'skaikru@gmail.com','Emmanuel','Karanja','GRADUATE','0712400896',5),(3,'jebmill@gmail.com','Mill','Stuart','GRADUATE','0712 400896',15),(4,'kiriamiti@gmail.com','Jack','Zollo','UNDER_GRADUATE_STUDENT','0712 400897',15),(5,'unclecharlie@gmail.com','Carlos','Estevez','UNDER_GRADUATE_STUDENT','0712 400898',7),(6,'nickles@gmail.com','Nicky','Nichols','HIGH_SCHOOL','0712 400899',1);

UNLOCK TABLES;


LOCK TABLES `job_application` WRITE;

INSERT INTO `job_application` (`application_id`, `applied_at`, `status`, `applicant_id`, `job_id`) VALUES (1,'2020-11-13 11:50:23.453961','ACTIVE',4,2),(2,'2020-11-13 11:50:35.075807','ACTIVE',4,1),(3,'2020-11-13 11:50:44.255241','ACTIVE',1,1),(4,'2020-11-13 11:50:49.920607','ACTIVE',3,1),(5,'2020-11-13 11:50:59.693396','ACTIVE',5,1),(6,'2020-11-13 11:51:09.019163','ACTIVE',5,2),(7,'2020-11-13 11:51:16.036733','ACTIVE',5,3),(8,'2020-11-13 11:51:25.675234','ACTIVE',2,3),(9,'2020-11-13 11:51:41.222260','ACTIVE',2,1),(10,'2020-11-13 11:51:56.519932','ACTIVE',2,2),(11,'2020-11-13 11:52:03.914814','ACTIVE',3,2);

UNLOCK TABLES;

LOCK TABLES `roles` WRITE;

INSERT INTO `roles` (`id`, `name`) VALUES (1,'ADMIN'),(2,'APPLICANT');
UNLOCK TABLES;

LOCK TABLES `user_role` WRITE;
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES (1,1),(2,2),(3,2),(4,2),(5,2),(6,2);
UNLOCK TABLES;

LOCK TABLES `users` WRITE;

INSERT INTO `users` (`id`, `email`, `first_name`, `is_admin`, `last_name`, `password`, `phone`) VALUES (1,'existentialkaranja@gmail.com','Emmanuel',_binary '','Karanja','$2a$10$nx815quRsC873PUeE6INzOsIqmCtr/1QFG0qVvwpQHSN0P8pvDH/y','0746422619'),(2,'skaikru@gmail.com','Emmanuel',_binary '\0','Karanja','$2a$10$lOndAYYixDYcSg6WTUqEDehy1v1Ayf8gy4KlXUMmw9gDmUSNxR7G6','0712400896'),(3,'jebmill@gmail.com','Mill',_binary '\0','Stuart','$2a$10$rs84cCqeiLWIFvhXfkUTr./62CPAWvR9urCCdO/x0pCSOxtpBVC1C','0712 400896'),(4,'kiriamiti@gmail.com','Jack',_binary '\0','Zollo','$2a$10$A6y7bsk/KQLhe.uzD7XfYOKJ4UGrj6QwAWgQtsXigW24JxBVelAxa','0712 400897'),(5,'unclecharlie@gmail.com','Carlos',_binary '\0','Estevez','$2a$10$m6u2KeZVxPn6ytb7bCv7jOR.RyxEEQkuJd3v5YZDKl0gEMyeoRVJy','0712 400898'),(6,'nickles@gmail.com','Nicky',_binary '\0','Nichols','$2a$10$seuyTBTcGjTkO8jRmGK3kOW2fSBi8R.Bquo2CAZTYnZ5s7Je4Ns2a','0712 400899');

UNLOCK TABLES;
