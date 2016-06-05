package org.expc.setting;

public class Nav {
	public String location;
	public String file;
	public Nav() {
		// TODO Auto-generated constructor stub
	}
	public Nav(String location, String file)
	{
		this.location= location;
		this.file= file;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
}
