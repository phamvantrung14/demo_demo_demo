package project_techwiz2.springboot_techwiz2.service.Impl.core;

import org.aspectj.weaver.ast.Or;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import project_techwiz2.springboot_techwiz2.model.core.Orders;
import project_techwiz2.springboot_techwiz2.repository.core.OrderRepository;
import project_techwiz2.springboot_techwiz2.service.OrderService;

import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Override
    public List<Orders> getAllOrders() {
        try{
            List<Orders> list = orderRepository.findAll();
            return list;
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Orders getOrderById(int id) {
        try{
            Orders orders = orderRepository.findById(id).get();
            return orders;
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean updateOrderStatus(int id,int status) {
        try{
            Orders orders = orderRepository.findById(id).get();
            orders.setUpdated(new Date());
            orders.setStatus(status);
            orderRepository.save(orders);
            return true;
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public int countOrderByStatus(int status) {
        List<Orders> list = orderRepository.findAllByStatus(status);
        int count = list.size();
        return count;
    }

    @Override
    public List<Orders> listOrderMonth(int month) {
        try{
            //List<Orders> listMonth = orderRepository.getOrderComplete(month);
            //return listMonth;
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Page<Orders> findPaginated(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo-1,pageSize);
        return this.orderRepository.findPaginateOrder(pageable);
    }

    @Override
    public Page<Orders> findPagiWatting(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo-1,pageSize);
        return this.orderRepository.findPagiOrderWatting(pageable);
    }

    @Override
    public Page<Orders> findPagiConfirmed(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo-1,pageSize);
        return this.orderRepository.findPagiOrderConfirmed(pageable);
    }

    @Override
    public Page<Orders> findPagiShipping(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo-1,pageSize);
        return this.orderRepository.findPagiOrderShipping(pageable);
    }

    @Override
    public Page<Orders> findPagiComplete(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo-1,pageSize);
        return this.orderRepository.findPagiOrderComplete(pageable);
    }

    @Override
    public Page<Orders> findPagiCancelled(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo-1,pageSize);
        return this.orderRepository.findPagiOrderCancelled(pageable);
    }
}
