package com.ow2wo.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ow2wo.commom.PageModel;
import com.ow2wo.dao.MusicCountDao;
import com.ow2wo.dao.MusicDao;
import com.ow2wo.domain.Music;
import com.ow2wo.domain.MusicPlayCount;
import com.ow2wo.service.MusicService;
import com.ow2wo.util.enums.OrderEnum;
@Service
public class MusicServiceImpl implements MusicService{
	@Resource
	MusicDao musicDao;
	@Resource
	MusicCountDao musicCountDao;

	@Override
	public PageModel<Music> findByPage(int pageNow, int pageSize,OrderEnum orderEnum,String key) {
		if(pageNow>0&&pageSize>0){
			return musicDao.findByPage(pageNow, pageSize,orderEnum,key);
		}else
			return null;
		
	}
	
	
    public PageModel<Music> findRecommendMusicByPage(int pageNow, int pageSize,OrderEnum orderEnum){
    	if(pageNow>0&&pageSize>0){
			return musicDao.findRecommendMusicByPage(pageNow, pageSize, orderEnum);
		}else
			return null;
    }

	@Override
	public PageModel<MusicPlayCount> findTopPlayMusicByPage(int pageSize,
			OrderEnum orderEnum) {
		return musicCountDao.findByPage(1, pageSize, orderEnum, "mount");

	}
}
