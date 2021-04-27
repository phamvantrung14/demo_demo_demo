package project_techwiz2.springboot_techwiz2.model;


import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "role")
public class Role {
    @Id
    private int id;

    private String name;
    @OneToMany(mappedBy = "roleId")
    private List<User_roles> listUserRole;

    public Role() {
    }

    public Role(String name, List<User_roles> listUserRole) {
        this.name = name;
        this.listUserRole = listUserRole;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<User_roles> getListUserRole() {
        return listUserRole;
    }

    public void setListUserRole(List<User_roles> listUserRole) {
        this.listUserRole = listUserRole;
    }
}
