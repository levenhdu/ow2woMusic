package com.ow2wo.util;

import java.io.InputStream;
import java.util.Properties;

public class PropertiesUtil {
	public String getProperty(String address, String propertyName) {
		Properties props = new Properties();
		InputStream in;
		try {
			in = getClass().getResourceAsStream(address);
			props.load(in);
		} catch (Exception e) {
			System.out.print(e.getMessage());
			return null;
		}
		if (props.isEmpty()) {
			return null;
		}
		return props.get(propertyName).toString();

	}
}
