package project_techwiz2.springboot_techwiz2.controller.frontend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import project_techwiz2.springboot_techwiz2.model.core.*;
import project_techwiz2.springboot_techwiz2.service.*;

import java.util.List;

@Controller
@RequestMapping(path = "/food")
public class FrontendController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CategoryDetailService categoryDetailService;
    @Autowired
    private ProductService productService;
    @Autowired
    private MenuService menuService;
    @Autowired
    private MenuDetailService menuDetailService;
    @Autowired
    private ProductMenuDetailService productMenuDetailService;

    @RequestMapping(path = "")
    public String index(Model model)
    {
        menu(model);

        return "frontend/home";
    }



    @RequestMapping(path = "getProByCate")
    public String getProByCate(@RequestParam("cateDetail_id")Integer cateDetail_id,Model model)
    {
        List<Product> listPro = productService.lisProByCateDetail(cateDetail_id);
        model.addAttribute("listPro",listPro);
        menu(model);
        return "frontend/productByCate";
    }

    @RequestMapping(path = "productDetail")
    public String getProductByDetail(@RequestParam("proId")Integer product_id,Model model)
    {
        menu(model);
        Product product = productService.getProById(product_id);
        model.addAttribute("product",product);
        return "frontend/productDetail";
    }


    @RequestMapping(path = "/menu")
    public String menuPro(Model model)
    {
//        menu(model);
//        List<Product_menu_detail> listProMenuDetail = productMenuDetailService.listProMenuDetailAll();
//        model.addAttribute("listProMenuDetail",listProMenuDetail);

        return findAllPaginated(1,model);
    }

    @RequestMapping(path = "menuProInMenu")
    public String getProByMenu(@RequestParam("menuDetailId")Integer menuDetaiId,Model model)
    {
//        menu(model);
//        List<Product_menu_detail> listProMenuDetail = productMenuDetailService.lisProMenuDetailByMenu(menuDetaiId);
//        model.addAttribute("listProMenuDetail",listProMenuDetail);

//        return "frontend/productByMenuId";
        return findPaginated(1,model,menuDetaiId);
    }

    @RequestMapping("/menuProInMenu/page/{pageNo}")
    public String findPaginated(@PathVariable(value = "pageNo") int pageNo, Model model,@RequestParam("menuDetailId")Integer menuDetaiId) {
        int pageSize = 9;
        Page<Product_menu_detail> page = productMenuDetailService.findPaginated(pageNo,pageSize,menuDetaiId);
        List<Product_menu_detail> listProMenuDetail = page.getContent();
        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("listProMenuDetail", listProMenuDetail);
        model.addAttribute("menuDetailId",menuDetaiId);
        menu(model);
        return "frontend/productByMenuId";
    }

    @RequestMapping(value = "/menu/page/{pageNo}")
    public String findAllPaginated(@PathVariable(value = "pageNo") int pageNo, Model model) {
        int pageSize = 9;
        Page<Product_menu_detail> page = productMenuDetailService.findAllPaginated(pageNo,pageSize);
        List<Product_menu_detail> listProMenuDetail = page.getContent();
        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("listProMenuDetail", listProMenuDetail);
        menu(model);
        return "frontend/productMenu";
    }



    public void menu(Model model)
    {
        List<Category> listCate = categoryService.listCateByStatus(1);
        List<Category_detail> listCateDetail = categoryDetailService.listCateDetailStatus(1);
        model.addAttribute("listCate",listCate);
        model.addAttribute("listCateDetail",listCateDetail);

        List<Menu> listMenu = menuService.listMenuByStatus(1);
        List<Menu_detail> listMenuDetail = menuDetailService.listMenuDerailByStatus(1);
        model.addAttribute("listMenu",listMenu);
        model.addAttribute("listMenuDetail",listMenuDetail);
    }




}
