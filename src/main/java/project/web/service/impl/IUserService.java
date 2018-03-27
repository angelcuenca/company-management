package project.web.service.impl;

import project.web.models.GoogleProfile;
import project.web.models.User;

import java.util.List;

/**
 * Created by angel_cuenca on 21/10/16.
 */
public interface IUserService {

    User registerNewUserAccount(GoogleProfile googleProfile);
    User findByEmail(String email);
    List<User> getAll();
    User save(User user);
    boolean addRole(String email, String role);
    boolean removeRole(String email, String role);
    void delete(String id);
}
