package com.ow2wo.domain;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * 音乐链接logo&本地地址
 * @author Administrator
 *
 */
@Component
@Scope("prototype")
public class MusicLink {

	/** 歌曲链接主键 */
	private int id;
	/** 本地地址 */
	private String localAddress;
	/* 歌曲 */
	private Music music;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLocalAddress() {
		return localAddress;
	}
	public void setLocalAddress(String localAddress) {
		this.localAddress = localAddress;
	}
	public Music getMusic() {
		return music;
	}
	public void setMusic(Music music) {
		this.music = music;
	}
	
}
