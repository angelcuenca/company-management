package project.web.models;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by angel_cuenca on 26/09/16.
 */
@Entity
public class User implements Serializable{
    @Id
    public String email;

    public String name;

    @Index
    public List<Role> roles = new ArrayList<>();

    public boolean isActive;

    public String picture;

    public User(){

    }

    public User(String email){
        this.email = email;
        this.isActive = true;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }
}
