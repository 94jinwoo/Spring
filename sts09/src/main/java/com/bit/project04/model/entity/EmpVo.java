package com.bit.project04.model.entity;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class EmpVo {
	
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	private int deptno;
}
