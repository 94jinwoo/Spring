USE class03;
DROP TABLE emp01;
DROP TABLE DEPT01;
CREATE TABLE dept01 (
  deptno int(11) NOT NULL AUTO_INCREMENT,
  dname varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  loc varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (deptno)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO dept01 (dname,loc) VALUES ('영업부','서울');
INSERT INTO dept01 (dname,loc) VALUES ('총무부','부산');
INSERT INTO dept01 (dname,loc) VALUES ('회계부','대구');
commit;