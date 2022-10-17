package poly.store.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.store.entity.OrderDetail;

public interface OrderDetailRespository extends JpaRepository<OrderDetail,Integer> {

}
