package com.fh.dao.bailing;

import net.sf.json.JSONObject;

public class judge {
	public String result(String volue) {
		System.out.println(volue);
		JSONObject obj = JSONObject.fromObject(volue);
		if (obj.has("result")) { // 判断JSONObject是否包含含有result属性值

			return obj.getString("result");

		}
		else
		return "";
	}
}
