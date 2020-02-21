package com.bit.project04.model;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.mybatis.spring.annotation.MapperScan;

import com.bit.project04.model.entity.EmpVo;

public interface EmpDao {
	
	@Select("select * from emp01 order by sabun desc")
	List<EmpVo> selectAll() throws SQLException;
	@Select("select * from emp01 where sabun=${value}")
	EmpVo selectOne(int value) throws SQLException;
	@Insert("insert into emp01 (name,nalja,pay,deptno) values(#{name},now(),#{pay},1)")
	void insertOne(EmpVo bean) throws SQLException;
	@Update("update emp01 set name=#{name}, pay=#{pay} where sabun=#{sabun}")
	int updateOne(EmpVo bean) throws SQLException;
	@Delete("delete from emp01 where sabun=#{value}")
	int deleteOne(int value) throws SQLException;
}
