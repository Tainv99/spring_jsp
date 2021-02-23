package poly.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Spoil")
public class Spoil {
	@Id
	@Column(name="Id")
	private String id;
	@Column(name="Content")
	private String content ;
	@Column(name = "Cate")
	private String cate;
	@Column(name="Daytime")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date daytime;
	
	
	public Spoil() {
		// TODO Auto-generated constructor stub
	}


	public Spoil(String id, String content, String cate, Date daytime) {
		super();
		this.id = id;
		this.content = content;
		this.cate = cate;
		this.daytime = daytime;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getCate() {
		return cate;
	}


	public void setCate(String cate) {
		this.cate = cate;
	}


	public Date getDaytime() {
		return daytime;
	}


	public void setDaytime(Date daytime) {
		this.daytime = daytime;
	}
	
}
