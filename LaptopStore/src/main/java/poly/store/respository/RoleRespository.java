package poly.store.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import poly.store.entity.Role;

public interface RoleRespository extends JpaRepository<Role,String> {

}
