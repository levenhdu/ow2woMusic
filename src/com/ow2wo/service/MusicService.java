package com.ow2wo.service;

import com.ow2wo.commom.PageModel;
import com.ow2wo.domain.Music;
import com.ow2wo.domain.MusicPlayCount;
import com.ow2wo.util.enums.OrderEnum;


public interface MusicService {
	/*
	 * 通过key主键来获取分页音乐
	 */
	PageModel<Music> findByPage(int pageNow,int pageSize,OrderEnum orderEnum,String key);
	/*
	 * 获取推荐音乐
	 */
	public PageModel<Music> findRecommendMusicByPage(int pageNow, int pageSize,OrderEnum orderEnum);
	/*
	 * 获取播放量最高的音乐
	 */
	PageModel<MusicPlayCount> findTopPlayMusicByPage(int pageSize,OrderEnum orderEnum);
}
