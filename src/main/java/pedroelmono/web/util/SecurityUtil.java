package pedroelmono.web.util;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import pedroelmono.web.models.Role;
import pedroelmono.web.models.User;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by angel_cuenca on 26/09/16.
 */
public class SecurityUtil {
    public static void logInUser(User user) {

        Collection<GrantedAuthority> grantedAuths = new ArrayList<>();

        for(Role role: user.getRoles()) {
            SimpleGrantedAuthority userAuth = new SimpleGrantedAuthority(role.getName());
            grantedAuths.add(userAuth);
        }

        Authentication authentication = new UsernamePasswordAuthenticationToken(user, user.getEmail(), grantedAuths );
        SecurityContextHolder.getContext().setAuthentication(authentication);
    }
}
