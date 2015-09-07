package com.ow2wo.domain;

import java.util.Date;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
@Component
@Scope("prototype")
public class Album {
	/** 专辑id */
	private int id;
	/** 专辑名称 */
	private String albumName;
	/** 简介 */
	private String introduction;
	/** 收录歌曲 */
	private Set<Music> musicSet;
	/** logo*/
	private String logoAddress;
	/** 创建时间 */
	private Date createTime;
	
	

	public String getLogoAddress() {
		return logoAddress;
	}
	public void setLogoAddress(String logoAddress) {
		this.logoAddress = logoAddress;
	}
	public Set<Music> getMusicSet() {
		return musicSet;
	}
	public void setMusicSet(Set<Music> musicSet) {
		this.musicSet = musicSet;
	}
	public String getAlbumName() {
		return albumName;
	}
	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
}
