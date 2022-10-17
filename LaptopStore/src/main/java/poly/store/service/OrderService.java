package poly.store.service;

import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;

import poly.store.entity.Orders;

public interface OrderService {

	Orders create(JsonNode orderData);

	Orders findById(Integer id);

	List<Orders> findByUserName(String username);

}
