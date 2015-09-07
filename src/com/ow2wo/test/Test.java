package com.ow2wo.test;

import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

	
	
	


public class Test {
	ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
	
	@org.junit.Test
	public void SessionFactoryTest(){
		SessionFactory sf=(SessionFactory) ac.getBean("sessionFactory");
	
	}
}
