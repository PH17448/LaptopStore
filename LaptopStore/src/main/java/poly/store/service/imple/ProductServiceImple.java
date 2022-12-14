package poly.store.service.imple;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.store.entity.Product;
import poly.store.respository.ProductRespository;
import poly.store.service.ProductService;


@Service
public class ProductServiceImple implements ProductService {
	@Autowired
	ProductRespository pdao  ;

	@Override
	public List<Product> findAll() {
		return pdao.findAll();
	}

	@Override
	public Product findById(Integer id) {
 		return pdao.findById(id).get();
	}

	@Override
	public List<Product> findByCategoryId(Integer cid) {
		return pdao.findByCategoryId(cid);
	}

	@Override
	public Product create(Product product) {
		return pdao.save(product);
	}

	@Override
	public Product update(Product product) {
		return pdao.save(product);
	}

	@Override
	public void delete(Integer id) {
		 pdao.deleteById(id);
	}

}
