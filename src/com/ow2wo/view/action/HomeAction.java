package com.ow2wo.view.action;


import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ow2wo.commom.PageModel;
import com.ow2wo.domain.Music;
import com.ow2wo.domain.MusicPlayCount;
import com.ow2wo.service.MusicService;
import com.ow2wo.util.PropertiesUtil;
import com.ow2wo.util.enums.OrderEnum;

public class HomeAction extends ActionSupport {
	@Resource
	MusicService musicService;
	
	String albumImageAddress=new PropertiesUtil().getProperty("/localLocationConfig.properties", "albumImageAddress");
	String musicAddress=new PropertiesUtil().getProperty("/localLocationConfig.properties", "musicAddress");
	
	
	public String list(){
		/**
		 * 获取推荐音乐
		 */
		PageModel<Music> pageModel=musicService.findRecommendMusicByPage(1,12,OrderEnum.ASC);
		ActionContext.getContext().put("recMusicList", pageModel.getList());
		
		
		/**
		 * 获取最新的音乐
		 */
		PageModel<Music> latestpageModel=musicService.findByPage(1, 8, OrderEnum.DESC,"id");
		ActionContext.getContext().put("latestMusicList",latestpageModel.getList());
		
		/**
		 * 获得播放量最高的音乐
		 */
		PageModel<MusicPlayCount> musicCountpageModel=musicService.findTopPlayMusicByPage(10, OrderEnum.DESC);
		ActionContext.getContext().put("musicCount", musicCountpageModel.getList());
		
		/**
		 * 将专辑图片路径前缀放入
		 */
		ActionContext.getContext().put("albumImageAddress", albumImageAddress);
		ActionContext.getContext().put("musicAddress", musicAddress);
		return "list";
		
	}

	
	
}
