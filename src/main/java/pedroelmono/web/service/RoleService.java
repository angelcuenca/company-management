package pedroelmono.web.service;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.ObjectifyService;
import org.springframework.stereotype.Service;
import pedroelmono.web.models.Role;
import pedroelmono.web.service.impl.IRoleService;

/**
 * Created by angel_cuenca on 21/10/16.
 */
@Service
public class RoleService implements IRoleService {
    ObjectifyService objectifyService;

    @Override
    public long save(Role role) {
        if(this.getByName(role.getName()) == null) {
            Key<Role> generatedKey = objectifyService.ofy().save().entity(role).now();
            return generatedKey.getId();
        }
        return 0;
    }

    @Override
    public Role getByName(String role){
        return ObjectifyService.ofy().load().type(Role.class).filter("name", role).first().now();
    }
}
