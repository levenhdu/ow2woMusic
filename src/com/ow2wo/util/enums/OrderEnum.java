package com.ow2wo.util.enums;
/*
 * 順序枚舉
 */
public enum OrderEnum {
	ASC("asc"),DESC("desc");
	
	private String flag;
	
	OrderEnum(String flag){
		this.flag=flag;
	}
	
	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	
	
}
