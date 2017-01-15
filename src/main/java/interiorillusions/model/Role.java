package interiorillusions.model;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;



@Entity   
public class Role implements Serializable{

	@Id
	private String username;
	private String rolename;
    public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	
	
	

}
