package poly.store.respository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import poly.store.entity.Orders;

public interface OrderRespository extends JpaRepository<Orders,Integer> {

	
	@Query("SELECT o FROM Orders o WHERE o.account.username=?1")
	List<Orders> findByUserName(String username);

}
