package com.bit.sts12.util;

import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

//@Aspect
//@Component
public class AfterExcep {

//	@AfterThrowing(pointcut = "execution(* com.bit.sts12.service.EmpService.deleteOne(..))", throwing = "error")
	public void after(Throwable error) {
		System.out.println("�����߻�..."+error.getMessage());
	}
	
}
