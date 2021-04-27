package project_techwiz2.springboot_techwiz2.repository.core;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import project_techwiz2.springboot_techwiz2.model.core.Category;
import project_techwiz2.springboot_techwiz2.model.core.Menu;

import java.util.List;

public interface MenuRepository extends JpaRepository<Menu,Integer> {
    List<Menu> findAllByStatus(int status);

    @Query("SELECT c FROM Menu c WHERE status = 1 OR status = 2")
    List<Menu> findActiveMenuStatus();

    @Query("SELECT c FROM Menu c WHERE status = 1 OR status = 2")
    Page<Menu> findPaginateMenuStatus(Pageable pageable);

    @Query("SELECT m FROM Menu m WHERE  menu_name = ?1")
    Menu findByMenuName(String menu_name);
}
