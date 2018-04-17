package project.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import project.web.models.GoogleProfile;
import project.web.models.User;
import project.web.service.UserService;
import project.web.util.GoogleUtil;
import project.web.util.SecurityUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by angel_cuenca on 26/09/16.
 */
@Controller
public class LoginController {

    @Autowired
    @Qualifier("userService")
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login( ) throws IOException {
        return "login";
    }

    @RequestMapping(value = "/callback", method = RequestMethod.GET)
    public String callbackGoogle(Model model){

        return "/login";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String redirectRequestToRegistrationPage(@RequestParam("token") String token, @RequestParam("service") String service, Model model, HttpServletRequest request) {

        model.addAttribute("token", token);

        //Get Google profile
        GoogleProfile googleProfile = GoogleUtil.getGoogleProfile(token);

        //Save User info
        User registered = userService.registerNewUserAccount(googleProfile);
        SecurityUtil.logInUser(registered);

        //Remove url params
        model.asMap().clear();

        return "redirect:/request";
    }
}
