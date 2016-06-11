package org.expc.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@MappedSuperclass
public class News_Board extends BaseDomain {
	/**
	 * ID
	 */
	@Id
	@GeneratedValue
	private int id;
	/**
	 * 帖子内容（必）
	 */
	@Column(name="_content",length=30000)
	private String content;
	/**
	 * 帖子标题（必）
	 */
	@Column(name="_title")
	private String title;
	/**
	 * 副标题
	 */
	private String subTitle;
	/**
	 * 类别
	 */
	private String cate;
	/**
	 * 关键词
	 */
	private String keyWords;
	/**
	 * 图片链接
	 */
	private String imgUri;
	
	/**
	 * 新闻摘要
	 */
	private String summary;
	/**
	 * 最近更新人
	 */
	private String updatePerson;
	/**
	 * 最近更新时候
	 */
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	/**
	 * 审核人
	 */
	private String checkPerson;
	/**
	 * 审核通过时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	private Date checkTime;
	/**
	 * 来源
	 */
	private String refSource;
	/**
	 * 置顶级别
	 */
	private int stickieLevel;
	/**
	 * 滚动级别
	 */
	private int rollLevel;
	/**
	 * 备注
	 */
	private String remark;
	/**
	 * 发布时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="_time")
	private Date time;
	/**
	 * 发布人
	 */
	private String publisher;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}

	public String getImgUri() {
		return imgUri;
	}

	public void setImgUri(String imgUri) {
		this.imgUri = imgUri;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
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

	public String getRefSource() {
		return refSource;
	}

	public void setRefSource(String refSource) {
		this.refSource = refSource;
	}

	public int getStickieLevel() {
		return stickieLevel;
	}

	public void setStickieLevel(int stickieLevel) {
		this.stickieLevel = stickieLevel;
	}

	public int getRollLevel() {
		return rollLevel;
	}

	public void setRollLevel(int rollLevel) {
		this.rollLevel = rollLevel;
	}
	
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public Class<?> keyClass() {
		// TODO Auto-generated method stub
		return Integer.class;
	}
	
}
