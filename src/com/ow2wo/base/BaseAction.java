package com.ow2wo.base;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ow2wo.service.MusicService;

public abstract class BaseAction<T>  extends ActionSupport implements ModelDriven<T> {
	@Resource
	MusicService homeService;
	
	Class<T> clazz=null;
	protected T model;
	
	
	protected BaseAction(){
		ParameterizedType pt= (ParameterizedType) this.getClass().getGenericSuperclass();
		clazz=(Class<T>) pt.getActualTypeArguments()[0];
		try {
			model=clazz.newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public T getModel() {
		// TODO Auto-generated method stub
		return model;
	}
}
