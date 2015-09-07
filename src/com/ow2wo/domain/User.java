package com.ow2wo.domain;

import java.util.Date;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ow2wo.util.enums.GenderEnum;
@Component
@Scope("prototype")
public class User {
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/** 用户id */
	private int id;
	/** 用户名 */
	private String userName;
	/** 昵称 */
	private String nickName;
	/** 密码 */
	private String password;
	/** 简介 */
	private String introduction;
	/** 生日 */
	private Date birthday;
	/** 性别 */
	private GenderEnum gender;
	/** 喜爱歌曲列表 */
	private FavoriteMusic favoriteMusic;
	
	
	
	public FavoriteMusic getFavoriteMusic() {
		return favoriteMusic;
	}
	public void setFavoriteMusic(FavoriteMusic favoriteMusic) {
		this.favoriteMusic = favoriteMusic;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public GenderEnum getGender() {
		return gender;
	}
	public void setGender(GenderEnum gender) {
		this.gender = gender;
	}
	
	
}
