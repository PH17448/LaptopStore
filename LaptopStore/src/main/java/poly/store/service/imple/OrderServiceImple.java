package poly.store.service.imple;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import poly.store.entity.Orders;
import poly.store.entity.OrderDetail;
import poly.store.respository.OrderRespository;
import poly.store.respository.OrderDetailRespository;
import poly.store.service.OrderService;

@Service
public class OrderServiceImple implements OrderService {

	@Autowired
	OrderRespository dao ;
	@Autowired
	OrderDetailRespository ddao ;
	
	@Override
	public Orders create(JsonNode orderData) {
		ObjectMapper mapper = new ObjectMapper();
		
		Orders order = mapper.convertValue(orderData, Orders.class);
		
		
		dao.save(order);
		
		TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>(){};
		List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"),type)
				.stream().peek(d -> d.setOrder1(order)).collect(Collectors.toList());
		ddao.saveAll(details);
		
		return order ;
	}

	@Override
	public Orders findById(Integer id) {
		return dao.findById(id).get();
	}

	@Override
	public List<Orders> findByUserName(String username) {
		return dao.findByUserName(username);
	}
	
}
