package project.web.service;

import com.googlecode.objectify.ObjectifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import project.web.models.GoogleProfile;
import project.web.models.Role;
import project.web.models.User;
import project.web.service.impl.IRoleService;
import project.web.service.impl.IUserService;

import java.util.Iterator;
import java.util.List;

/**
 * Created by angel_cuenca on 21/10/16.
 */
@Service
@Qualifier("userService")
public class UserService implements IUserService {


    ObjectifyService objectifyService;

    @Autowired
    private IRoleService roleService;

    @Override
    public List<User> getAll() {
        return objectifyService.ofy().load().type(User.class).list();
    }

    @Override
    public User save(final User user) {
        objectifyService.ofy().save().entity(user).now();

        return user;
    }

    @Override
    public boolean addRole(String email, String roleName) {
        boolean existsRole = false;
        User user = this.findByEmail(email);
        Role rol = roleService.getByName(roleName);

        Iterator<Role> iterator = user.roles.iterator();
        while(iterator.hasNext()){
            Role role = iterator.next();
            if(role.getName().equals(rol.getName())){
                existsRole = true;
            }
        }

        //Returns false if role already exists
        if(!existsRole){
            user.roles.add(rol);
            this.save(user);
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean removeRole(String email, String roleName) {
        User user = this.findByEmail(email);
        Role rol = roleService.getByName(roleName);

        //Returns true if role was removed successfully
        Iterator<Role> iterator = user.roles.iterator();
        while(iterator.hasNext()){
            Role role = iterator.next();
            if(role.getName().equals(rol.getName())){
                iterator.remove();
                this.save(user);
                return true;
            }
        }

        return false;
    }

    @Override
    public void delete(String email) {
        objectifyService.ofy().delete().entity(new User(email)).now();
    }


    @Override
    public User registerNewUserAccount(GoogleProfile googleProfile) {
        Role role;
        User registered = this.findByEmail(googleProfile.getEmail());

        if (registered == null) {
            User user = new User(googleProfile.getEmail());
            user.setName(googleProfile.getName());
            user.setPicture(googleProfile.getPicture());

            //Add default role for new user
            role = roleService.getByName("ROLE_USER");
            user.roles.add(role);

            if( googleProfile.getEmail().equalsIgnoreCase("angelscrf@gmail.com") ){
                role = roleService.getByName("ROLE_ADMIN");
                user.roles.add(role);
            }

            return this.save(user);
        }else{
            //Return the user if already exists
            return registered;
        }
    }

    /**
     * Gets an employee based on its email
     * @param email User's email
     * @return User object with the users data existing in the database
     */
    @Override
    public User findByEmail(String email) {
        User user = objectifyService.ofy().load().entity(new User(email)).now();
        return user;
    }
}
