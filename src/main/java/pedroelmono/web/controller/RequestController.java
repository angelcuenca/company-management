package pedroelmono.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Angel Sanchez on 22/10/2016.
 */
@Controller
public class RequestController {
    @RequestMapping(value = "/request", method = RequestMethod.GET)
    public String showListRequest(){
        return "/requestlist";
    }

    @RequestMapping(value = "/request/new", method = RequestMethod.GET)
    public String newRequest(){
        return "/requestnew";
    }

    @RequestMapping(value = "/request/delete/{idRequest}", method = RequestMethod.GET)
    public String deleteRequest(){
        System.out.println("eliminado");
        return "/requestlist";
    }

    @RequestMapping(value = "/request/{idRequest}", method = RequestMethod.POST)
    public String editRequest(){
        return "/requestnew";
    }
}
