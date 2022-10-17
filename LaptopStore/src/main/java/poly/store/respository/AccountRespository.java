package poly.store.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.store.entity.Account;


public interface AccountRespository extends JpaRepository<Account,String> {
	
}
