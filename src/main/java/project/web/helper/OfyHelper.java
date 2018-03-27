package project.web.helper;

import com.googlecode.objectify.ObjectifyService;
import project.web.models.Request;
import project.web.models.Role;
import project.web.models.User;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Created by angel_cuenca on 14/10/16.
 */
public class OfyHelper implements ServletContextListener{
    public void contextInitialized(ServletContextEvent event) {
        // This will be invoked as part of a warmup request, or the first user request if no warmup
        // request.
        ObjectifyService.register(Role.class);
        ObjectifyService.register(User.class);
        ObjectifyService.register(Request.class);
    }

    public void contextDestroyed(ServletContextEvent event) {
        // App Engine does not currently invoke this method.
    }
}
