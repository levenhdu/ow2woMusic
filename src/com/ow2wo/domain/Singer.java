package com.ow2wo.domain;

import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ow2wo.util.enums.GenderEnum;
@Component
@Scope("prototype")
public class Singer {
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private int id;
	private String singerName;
	private GenderEnum gender;
	private Byte age;
	private String introduction;
	private Set<Music> musicSet;
	

	public String getSingerName() {
		return singerName;
	}
	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}
	public GenderEnum getGender() {
		return gender;
	}
	public void setGender(GenderEnum gender) {
		this.gender = gender;
	}
	public Byte getAge() {
		return age;
	}
	public void setAge(Byte age) {
		this.age = age;
	}
	public Set<Music> getMusicSet() {
		return musicSet;
	}
	public void setMusicSet(Set<Music> musicSet) {
		this.musicSet = musicSet;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
}
