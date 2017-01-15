package interiorillusions.model;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
@Entity   
public class User implements Serializable {
	@Id
	@NotEmpty(message="Name cannot be left blank")
	private String username;
	@NotEmpty(message="E-mail cannot be left blank")
	private String email;
	@NotNull
	@Size(min =8, max = 10)
	private String password;
	private boolean enabled=true;
	
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	
	
	
}
