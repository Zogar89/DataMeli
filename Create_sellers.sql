USE `DataMeli`;

DROP TABLE IF EXISTS `sellers`;

CREATE TABLE `sellers` (
  `CUST_ID` varchar(12) NOT NULL,
  `PRIMER_COBRO` date NOT NULL,
  `FLAG_RECURRENTE` varchar(24) NOT NULL,
  `TIPO_CLIENTE` varchar(24) NOT NULL
);

INSERT INTO `sellers` (`CUST_ID`,`PRIMER_COBRO`,`FLAG_RECURRENTE`,`TIPO_CLIENTE`)
VALUES
  (1,"2022-05-09","Recurrente","Autonomo"),
  (2,"2022-04-05","Recurrente","Autonomo"),
  (3,"2022-08-09","New","Autonomo"),
  (4,"2022-03-10","Recurrente","Monotributista"),
  (5,"2022-06-05","Recurrente","Autonomo"),
  (6,"2022-06-22","New","Monotributista"),
  (7,"2022-03-16","New","Autonomo"),
  (8,"2022-03-25","New","Monotributista"),
  (9,"2022-05-02","New","Autonomo"),
  (10,"2022-03-12","Recurrente","Monotributista");