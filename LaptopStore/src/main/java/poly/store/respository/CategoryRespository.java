package poly.store.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.store.entity.Category;

public interface CategoryRespository extends JpaRepository<Category,Integer> {
	
}
