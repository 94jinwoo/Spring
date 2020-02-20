USE class03;
DROP TABLE emp01;
DROP TABLE DEPT01;
CREATE TABLE dept01 (
  deptno int(11) NOT NULL AUTO_INCREMENT,
  dname varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  loc varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (deptno)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO dept01 (dname,loc) VALUES ('������','����');
INSERT INTO dept01 (dname,loc) VALUES ('�ѹ���','�λ�');
INSERT INTO dept01 (dname,loc) VALUES ('ȸ���','�뱸');
commit;