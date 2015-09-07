package com.ow2wo.dao.impl;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ow2wo.base.DaoSupportImpl;
import com.ow2wo.commom.PageModel;
import com.ow2wo.dao.MusicDao;
import com.ow2wo.domain.Music;
import com.ow2wo.util.enums.OrderEnum;
@Repository
@Transactional
public class MusicDaoImpl extends DaoSupportImpl<Music> implements MusicDao{

	/*
	 * 找到推薦的音樂
	 * 
	 */
	public PageModel<Music> findRecommendMusicByPage(int pageNow,int pageSize,OrderEnum orderEnum){
		int pageStart=(pageNow-1)*pageSize;
		int pageEnd=pageNow*pageSize;
		Long totalRecords;
		String orderString;
		if(orderEnum==OrderEnum.ASC)
			orderString=" order by id asc";
		else
			orderString=" order by id desc";
		PageModel<Music> pageModel=new PageModel<Music>();
		List<Music> list=new ArrayList<Music>();
		list=getSession().createQuery(
				"FROM "+" com.ow2wo.domain.Music where recommend=1 "+orderString)
				.setFirstResult(pageStart)
				.setMaxResults(pageSize)
				.list();
		totalRecords=(Long)getSession().createQuery(
				"Select count(*) from  com.ow2wo.domain.Music ")
				.uniqueResult();
		pageModel.setList(list);
		pageModel.setPageNo(pageNow);
		pageModel.setPageSize(pageSize);
		pageModel.setTotalRecords(totalRecords.intValue());
		return pageModel;
}	
}
