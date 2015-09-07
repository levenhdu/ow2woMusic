package com.ow2wo.service.impl;

import javax.annotation.Resource;

import com.ow2wo.dao.AlbumDao;
import com.ow2wo.domain.Album;
import com.ow2wo.service.AlbumService;

public class AlbumServiceImpl implements AlbumService{
	@Resource
	AlbumDao albumDao;
	
	@Override
	public Album getAlbumById(int id) {
		
		return albumDao.findById((long)id);
	}

	

	
	
}
