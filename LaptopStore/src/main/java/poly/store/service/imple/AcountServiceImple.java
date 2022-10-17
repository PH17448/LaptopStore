package poly.store.service.imple;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.store.entity.Account;
import poly.store.respository.AccountRespository;
import poly.store.service.AccountService;


@Service
public class AcountServiceImple implements AccountService {
	@Autowired
	AccountRespository adao;
	
	@Override
	public Account findById(String username) {
		return adao.findById(username).get();
	}
	
}
