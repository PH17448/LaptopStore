package poly.store.service.imple;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.store.entity.Category;
import poly.store.respository.CategoryRespository;
import poly.store.service.CategoryService;

@Service
public class CategoryServiceImple implements CategoryService {
	@Autowired
	CategoryRespository cdao ;
	
	@Override
	public List<Category> findAll(){
		return cdao.findAll();
	}
	
}
