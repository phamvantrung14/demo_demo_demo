package project_techwiz2.springboot_techwiz2.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import project_techwiz2.springboot_techwiz2.model.About_us;

import java.util.List;

public interface About_usRepository extends JpaRepository<About_us,Integer> {
    List<About_us> findAllByStatus(int status);

    @Query("SELECT a FROM About_us a WHERE status = 1 OR status = 2")
    List<About_us> findActiveAboutStatus();

    @Query("SELECT a FROM About_us a WHERE status = 1 OR status = 2")
    Page<About_us> findPaginateAboutStatus(Pageable pageable);
}
