package poly.store.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.store.entity.Authority;

public interface AuthorityRespository extends JpaRepository<Authority, Integer> {

}
