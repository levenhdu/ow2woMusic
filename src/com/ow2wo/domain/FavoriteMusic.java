package com.ow2wo.domain;
/**
 * 用户对应喜爱歌曲
 */
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
@Component
@Scope("prototype")
public class FavoriteMusic {
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/** 喜爱歌曲记录主键 */
	private int id;
	/** 喜爱歌曲单名 */
	private String FavoriteListName;
	/** 用户 */
	private User user;
	/** 歌曲列表 */
	private Set<Music> musicSet;
	
	
	public String getFavoriteListName() {
		return FavoriteListName;
	}
	public void setFavoriteListName(String favoriteListName) {
		FavoriteListName = favoriteListName;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Set<Music> getMusicSet() {
		return musicSet;
	}
	public void setMusicSet(Set<Music> musicSet) {
		this.musicSet = musicSet;
	}

}
