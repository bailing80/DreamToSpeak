package com.fh.dao.bailing;

public class Voice {
	private String imgsrc;
	private String contrast;
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	public String getContrast() {
		return contrast;
	}
	@Override
	public String toString() {
		return "{\"imgsrc\":\"" + imgsrc + "\", \"contrast\":\"" + contrast + "\"}  ";
	}
	public void setContrast(String contrast) {
		this.contrast = contrast;
	}
}
