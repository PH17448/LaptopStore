package poly.store.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@SuppressWarnings("serial")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name ="Roles")
public class Role implements Serializable {
	@Id
	@Column(name="id")
	private String id ;
	
	@Column(name="name")
	private String name ;
	
	@JsonIgnore
	@OneToMany(mappedBy = "role")
	private List<Authority> authorities ;

	
	
	
	
}
