package com.ow2wo.domain;

import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
@Component
@Scope("prototype")
public class Music {
	/* 主键歌曲id */
	private int id;
	/* 歌名 */
	private String musicName;
	/* 歌手 */
	private Singer singer;
	/* 专辑 */
	private Album album;
	/* 时长 */
	private int time;
	/* 大小(单位m)*/
	private float size;
	/* 是否有MV*/
	private boolean doMvExist;
	/*喜爱歌曲列表 */
	private Set<FavoriteMusic> favoriteMusicSet;
	/* 是否被推薦 */
	private boolean recommend=false;
	/* 音乐地址链接*/
	private MusicLink musicLink;
	

	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public boolean isRecommend() {
		return recommend;
	}
	public void setRecommend(boolean recommend) {
		this.recommend = recommend;
	}
	public Set<FavoriteMusic> getFavoriteMusicSet() {
		return favoriteMusicSet;
	}
	public void setFavoriteMusicSet(Set<FavoriteMusic> favoriteMusicSet) {
		this.favoriteMusicSet = favoriteMusicSet;
	}
	public Album getAlbum() {
		return album;
	}
	public void setAlbum(Album album) {
		this.album = album;
	}
	public String getMusicName() {
		return musicName;
	}
	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}
	public Singer getSinger() {
		return singer;
	}
	public void setSinger(Singer singer) {
		this.singer = singer;
	}
	public float getSize() {
		return size;
	}
	public void setSize(float size) {
		this.size = size;
	}
	public boolean isDoMvExist() {
		return doMvExist;
	}
	public void setDoMvExist(boolean doMvExist) {
		this.doMvExist = doMvExist;
	}
	
	public MusicLink getMusicLink() {
		return musicLink;
	}
	public void setMusicLink(MusicLink musicLink) {
		this.musicLink = musicLink;
	}
	
	
}
