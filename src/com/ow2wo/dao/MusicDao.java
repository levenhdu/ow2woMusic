package com.ow2wo.dao;


import com.ow2wo.base.DaoSupport;
import com.ow2wo.commom.PageModel;
import com.ow2wo.domain.Music;
import com.ow2wo.util.enums.OrderEnum;

public interface MusicDao extends DaoSupport<Music>  {
	public PageModel<Music> findRecommendMusicByPage(int pageNow,int pageSize,OrderEnum orderEnum);
}
