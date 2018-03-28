package project.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import project.web.service.MailService;

import javax.mail.MessagingException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.StringTokenizer;

/**
 * Created by angel_cuenca on 6/15/2016.
 */
@Controller
public class HomeController {

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String home(){
        //return "redirect:another";
        return "home";
    }

    @RequestMapping(value = "/mail",  method = RequestMethod.POST)
    public String another(@RequestParam(value= "recipients", required=false) String recipients,
                          @RequestParam(value= "subject", required=false) String subject,
                          @RequestParam(value= "body", required=false) String body,
                          @RequestParam(value= "file", required=false) String file,
                          Model model) throws IOException, MessagingException {
        String user="angel.cuenca@sanmina.com";
        String pass="Bouchard23";
        StringTokenizer list = new StringTokenizer(recipients, ",");
        String[] recipientsList = new String[list.countTokens()];

        int numElements= list.countTokens();
        for(int i=0; i<numElements; i++){
            recipientsList[i] = list.nextElement().toString();
        }

        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");

        String[] attachFiles = new String[0];
        //attachFiles[0] = "/home/angel_cuenca/Documents/PERSONAL/EA/TestProyect/src/main/webapp/WEB-INF/pages/Privacy_Policy_USA.pdf";
        String context = "Ignorame pero aun asi te dire la hora: "+sdf.format(cal.getTime());

        MailService mailService = new MailService(user, pass);
        boolean mailSent = true;
         mailService.sendEmail( recipientsList, attachFiles, subject, context);
        if(mailSent){
            model.addAttribute("answer", "Mail was sent.");
        }else{
            model.addAttribute("answer", "Mail was not sent.");
        }


        //MyApp myApp = new MyApp();
        //myApp.jobs();

        return "home";
    }

    @RequestMapping(value = "/notifications",  method = RequestMethod.GET)
    public String notification(){
        String user="angel.cuenca@sanmina.com";
        String pass="Bouchard21";
        MailService mailService = new MailService(user, pass);
        mailService.sendNotifications();
        return "mail";

    }


}
