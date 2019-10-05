package org.xavi.test.classes;

import java.io.Serializable;

public class Datos implements Serializable {
	
	private static final long serialVersionUID = 1763208761720051740L;
	protected String tt;
	protected String yy;
	
	public Datos() {
		tt = "Hola";
		yy = "uu";
	}

	public String getTt() {
		return tt;
	}

	public void setTt(String tt) {
		this.tt = tt;
	}

	public String getYy() {
		return yy;
	}

	public void setYy(String yy) {
		this.yy = yy;
	}
	
	
}
