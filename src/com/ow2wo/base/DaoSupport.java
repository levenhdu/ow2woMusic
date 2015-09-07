package com.ow2wo.base;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ow2wo.commom.PageModel;
import com.ow2wo.util.enums.OrderEnum;
@Repository
@Transactional
public interface DaoSupport<T> {
	
	/**
	 * save
	 * 
	 * @param t
	 */
	void save(T t);

	/**
	 * remove
	 * 
	 * @param id
	 */
	void remove(Long id);

	/**
	 * update
	 * 
	 * @param id
	 */
	void update(T t);

	/**
	 * find by id
	 * 
	 * @param id
	 * @return T
	 */
	T findById(Long id);

	/**
	 * find by ids
	 * 
	 * @param id
	 * @return List<T>
	 */
	List<T> findByIds(Long[] ids);

	/**
	 * find all
	 * 
	 * @return List<T>
	 */
	List<T> findAll();
	/**
	 * find by page
	 */
	PageModel<T> findByPage(int pageNow,int pageSize,OrderEnum orderEnum,String key);
}
