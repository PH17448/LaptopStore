package poly.store.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Accounts")
public class Account implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name ="username")
	private String username ;
	
	@Column(name = "password")
	private String password ;
	
	@Column(name = "fullname")
	private String fullname ;
	
	@Column(name = "email")
	private String email ;
	
	@Column(name = "photo")
	private String photo;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	private List<Orders> orders ;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account",fetch = FetchType.EAGER)
	private List<Authority> authorities ;

	
	
	
}
