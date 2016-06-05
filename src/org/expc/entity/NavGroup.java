package org.expc.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class NavGroup extends BaseDomain{
	/**
	 *导航编号
	 */
	@Id
	private int id;
	/**
	 *名称
	 */
	private String name;
	/**
	 * 取值
	 */
	private String value;
	/**
	 * 备注
	 */
	private String remark;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
