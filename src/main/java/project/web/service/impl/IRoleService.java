package project.web.service.impl;

import project.web.models.Role;

/**
 * Created by angel_cuenca on 21/10/16.
 */
public interface IRoleService {
    long save(Role role);
    Role getByName(String role);
}
