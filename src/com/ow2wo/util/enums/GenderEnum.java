package com.ow2wo.util.enums;

/**
 * 性別Enum
 * @author Administrator
 *
 */
public enum GenderEnum {
	MALE("male"),FEMALE("female");
	
	private	String genderFlag;
	
	private GenderEnum (String genderFlag){
		this.genderFlag=genderFlag;
	}
	
	public String getGenderEnum(){
		return this.genderFlag;
	}
}
