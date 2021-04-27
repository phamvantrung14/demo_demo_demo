package project_techwiz2.springboot_techwiz2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project_techwiz2.springboot_techwiz2.model.Role;
import project_techwiz2.springboot_techwiz2.service.RoleService;

import java.util.List;

@Controller
@RequestMapping(path = "/admin/role")
public class RoleController {
    @Autowired
    private RoleService roleService;
    @RequestMapping(path = "")
    public String getAllRole(Model model)
    {
        List<Role> list = roleService.getAllRole();
        Role role = new Role();
        model.addAttribute("list",list);
        model.addAttribute("roleNew",role);
        return "admin/role/listRole";
    }

    @RequestMapping(path = "/saveRole",method = RequestMethod.POST)
    public String saveRole(@ModelAttribute("roleNew")Role role)
    {
        boolean bl = roleService.saveRole(role);
        if (bl)
        {
            return "redirect:/admin/role?success";
        }
        return "redirect:/admin/role?error";
    }

}
