package org.expc.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class NavItem extends BaseDomain {

	private static final long serialVersionUID = 1L;
	/**
	 *栏目标识,也是栏目的路径
	 */
	@Id
	@Column(length=8)
	private String id;
	/**
	 * 名称
	 */
	private String name;
	/**
	 * html格式内容
	 */
	@Lob
	@Column(name="_content")
	private String content;
	/**
	 * 请求url
	 */
	private String reqUrl;
	/**
	 * 创建人
	 */
	private String createPerson;
	/**
	 * 上传时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	private Date createTime;
	/**
	 * 最近更新人
	 */
	private String updatePerson;
	/**
	 * 最近更新时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	/**
	 * 审核人
	 */
	private String checkPerson;
	/**
	 * 审核时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	private Date checkTime;
	/**
	 * 文档备注
	 */
	private String remark;
	/**
	 * text格式内容
	 */
	private String text;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreatePerson() {
		return createPerson;
	}
	public void setCreatePerson(String createPerson) {
		this.createPerson = createPerson;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getUpdatePerson() {
		return updatePerson;
	}
	public void setUpdatePerson(String updatePerson) {
		this.updatePerson = updatePerson;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getCheckPerson() {
		return checkPerson;
	}
	public void setCheckPerson(String checkPerson) {
		this.checkPerson = checkPerson;
	}
	public Date getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getReqUrl() {
		return reqUrl;
	}
	public void setReqUrl(String reqUrl) {
		this.reqUrl = reqUrl;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
}
