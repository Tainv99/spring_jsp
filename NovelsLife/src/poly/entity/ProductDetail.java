package poly.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Comicdetail")
public class ProductDetail {
	@Id
	@Column(name = "comicdetailid")
	private String productdetail;
	@Column(name = "Chapters")
	private int chapters;
	@Column(name = "Content")
	private String content;
	@Column(name="title")
	private String title;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "ProductId")
	private Product product;
	
	public ProductDetail() {
		// TODO Auto-generated constructor stub
	}

	public ProductDetail(String productdetail, int chapters, String content, String title, Product product) {
		super();
		this.productdetail = productdetail;
		this.chapters = chapters;
		this.content = content;
		this.title = title;
		this.product = product;
	}

	public String getProductdetail() {
		return productdetail;
	}

	public void setProductdetail(String productdetail) {
		this.productdetail = productdetail;
	}

	public int getChapters() {
		return chapters;
	}

	public void setChapters(int chapters) {
		this.chapters = chapters;
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

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	
	
}
