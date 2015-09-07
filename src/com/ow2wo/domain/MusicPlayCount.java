package com.ow2wo.domain;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/*
 * 音乐计数
 */
@Component
@Scope("prototype")
public class MusicPlayCount {

	private int id;
	private int mount=0;
	private Music music;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMount() {
		return mount;
	}
	public void setMount(int mount) {
		this.mount = mount;
	}
	public Music getMusic() {
		return music;
	}
	public void setMusic(Music music) {
		this.music = music;
	}
	
	
}
