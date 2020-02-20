USE class03;
DROP TABLE emp01;
DROP TABLE DEPT01;
CREATE TABLE dept01 (
  deptno int(11) NOT NULL AUTO_INCREMENT,
  dname varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  loc varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (deptno)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
INSERT INTO dept01 (deptno,dname,loc) VALUES (1,'영업부','서울');
INSERT INTO dept01 (deptno,dname,loc) VALUES (2,'총무부','부산');
INSERT INTO dept01 (deptno,dname,loc) VALUES (3,'회계부','대구');
