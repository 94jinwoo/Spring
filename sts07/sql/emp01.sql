USE class03;
DROP TABLE emp01;
CREATE TABLE emp01 (
  sabun int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  nalja datetime DEFAULT NULL,
  pay int(11) DEFAULT NULL,
  deptno int(11) DEFAULT NULL,
  PRIMARY KEY (sabun),
  KEY emp01_fk_idx (deptno),
  CONSTRAINT emp01_fk FOREIGN KEY (deptno) REFERENCES dept01 (deptno) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test1',now(),1000,1);
INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test2',now(),2000,3);
INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test3',now(),3000,1);
INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test4',now(),4000,2);
commit;