package project.web.controller;

import com.googlecode.objectify.ObjectifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.web.models.Role;
import project.web.service.impl.IRoleService;

import java.util.logging.Logger;

/**
 * Created by angel_cuenca on 21/10/16.
 */
@Controller
public class InitController {
    ObjectifyService objectifyService;

    private static final Logger log = Logger.getLogger(LoginController.class.getName());

    @Autowired
    private IRoleService roleService;

    @RequestMapping(value = {"/init"}, method = RequestMethod.GET)
    public String initEntities() {
        Role role1 = new Role("ROLE_ADMIN");
        long dos =roleService.save(role1);

        role1 = new Role("ROLE_USER");
        long uno = roleService.save(role1);

        return "/login";
    }

}
