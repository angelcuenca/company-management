package pedroelmono.web.service;

import com.googlecode.objectify.ObjectifyService;
import org.springframework.stereotype.Service;
import pedroelmono.web.service.impl.IRequestService;

/**
 * Created by Angel Sanchez on 22/10/2016.
 */
@Service
public class RequestService implements IRequestService{
    ObjectifyService objectifyService;


}
