package pedroelmono.web.service.impl;

import pedroelmono.web.models.Role;

/**
 * Created by angel_cuenca on 21/10/16.
 */
public interface IRoleService {
    long save(Role role);
    Role getByName(String role);
}
