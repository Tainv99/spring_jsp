package poly.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
public class Users{
	/**
	 * 
	 */
	@Id
	@Column(name = "UserID")
	private String userID;
	@Column(name = "Username")
	private String username;
	@Column(name = "Pass")
	private String pass;
	@Column(name = "Email")
	private String email;
	@Column(name = "Avatar")
	private String avatar;
	@Column(name = "isAdmin")
	private int isAdmin;


	public Users() {
		// TODO Auto-generated constructor stub
	}
	public Users(String userID, String username, String pass,  String email, String avatar, int isAdmin) {
		super();
		this.userID = userID;
		this.username = username;
		this.pass = pass;

		this.email = email;
		this.avatar = avatar;
		this.isAdmin = isAdmin;
		
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	
}
