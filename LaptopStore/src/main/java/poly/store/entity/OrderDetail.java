package poly.store.entity;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "orderdetails")
public class OrderDetail implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name ="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id ;
	
	
	@ManyToOne
	@JoinColumn(name="orderid")
	private Orders order1 ;
	
	@ManyToOne
	@JoinColumn(name ="productid")
	private Product product ;
	
	@Column(name ="price")
	private Double price ;
	
	@Column(name="quantity")
	private Integer quantity ;

	
	
	
	
}
