package project.web.models;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

/**
 * Created by angel_cuenca on 21/10/16.
 */
@Entity
public class Guestbook {
    @Id
    public String book;

}
