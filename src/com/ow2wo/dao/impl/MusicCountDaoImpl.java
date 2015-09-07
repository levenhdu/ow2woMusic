package com.ow2wo.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ow2wo.base.DaoSupportImpl;
import com.ow2wo.dao.MusicCountDao;
import com.ow2wo.domain.MusicPlayCount;
@Repository
@Transactional
public class MusicCountDaoImpl extends DaoSupportImpl<MusicPlayCount> implements MusicCountDao{
	
}
