package com.ow2wo.base;

import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ow2wo.commom.PageModel;
import com.ow2wo.util.enums.OrderEnum;
@Repository
@Transactional
public abstract class DaoSupportImpl<T> implements DaoSupport<T> {
	
	private  Class<T> clazz;
	


	public DaoSupportImpl(){
		ParameterizedType pt = (ParameterizedType) this.getClass()
								.getGenericSuperclass();
		this.clazz = (Class<T>) pt.getActualTypeArguments()[0];
		System.out.println(clazz.getSimpleName());
	}
	
	
	@Resource
	private SessionFactory sessionFactory;
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	@Override
	public void save(T t) {
		// TODO Auto-generated method stub
		getSession().save(t);
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
	 	T t=findById(id);
	 	if(t!=null){
	 
	 		System.out.println("============"+getSession().isOpen());
	 		getSession().delete(t);	 		
	 		System.out.println("============delete end");
	 	}
	 		
	}

	@Override
	public void update(T t) {
		// TODO Auto-generated method stub
		getSession().update(t);
	}

	@Override
	public T findById(Long id) {
		// TODO Auto-generated method stub
		if(id==null)
			return null;
		return (T) getSession().get(clazz, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByIds(Long[] ids) {
		if(ids==null||ids.length==0){
			return Collections.EMPTY_LIST;
		}else{
			List<T> list= getSession().createQuery(" FROM "+clazz.getSimpleName()+" WHERE id IN (:ids)")
					.setParameterList("ids", ids)
					.list();
			System.out.println(list);
			return list;
		}
		
	}
 
	@Override
	public List<T> findAll() {
		// TODO Auto-generated method stub
		return getSession().createQuery(
				"FROM "+clazz.getSimpleName())
				.list();
	}
	
	public PageModel<T> findByPage(int pageNow,int pageSize,OrderEnum orderEnum,String key){
			int pageStart=(pageNow-1)*pageSize;
			int pageEnd=pageNow*pageSize;
			Long totalRecords;
			String orderString;
			if(orderEnum==OrderEnum.ASC)
				orderString=" order by "+key+" asc";
			else
				orderString=" order by "+key+" desc";
			PageModel<T> pageModel=new PageModel<T>();
			List<T> list=new ArrayList<T>();
			list=getSession().createQuery(
					"FROM "+clazz.getSimpleName()+orderString)
					.setFirstResult(pageStart)
					.setMaxResults(pageSize)
					.list();
			totalRecords=(Long)getSession().createQuery(
					"Select count(*) from "+clazz.getSimpleName())
					.uniqueResult();
			pageModel.setList(list);
			pageModel.setPageNo(pageNow);
			pageModel.setPageSize(pageSize);
			pageModel.setTotalRecords(totalRecords.intValue());
			return pageModel;
	}	
	
}