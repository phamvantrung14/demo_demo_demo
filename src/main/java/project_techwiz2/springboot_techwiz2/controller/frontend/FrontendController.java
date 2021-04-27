package project_techwiz2.springboot_techwiz2.controller.frontend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import project_techwiz2.springboot_techwiz2.model.core.Category;
import project_techwiz2.springboot_techwiz2.model.core.Category_detail;
import project_techwiz2.springboot_techwiz2.model.core.Product;
import project_techwiz2.springboot_techwiz2.service.CategoryDetailService;
import project_techwiz2.springboot_techwiz2.service.CategoryService;
import project_techwiz2.springboot_techwiz2.service.ProductService;

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
        Product product = productService.getProById(product_id);
        model.addAttribute("product",product);
        return "frontend/productDetail";
    }



    public void menu(Model model)
    {
        List<Category> listCate = categoryService.listCateByStatus(1);
        List<Category_detail> listCateDetail = categoryDetailService.listCateDetailStatus(1);
        model.addAttribute("listCate",listCate);
        model.addAttribute("listCateDetail",listCateDetail);
    }

}
