package project.web.util;

import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import project.web.models.GoogleProfile;

/**
 * Created by angel_cuenca on 26/09/16.
 */
public class GoogleUtil {
    /**
     * @param token Google access_token to be validated against google
     * @return Returns GoogleProfile object with the user's data retrieved
     */
    public static GoogleProfile getGoogleProfile(String token) {
        RestTemplate template = new RestTemplate();
        String url = "https://www.googleapis.com/oauth2/v2/userinfo?access_token=" + token;
        ResponseEntity<GoogleProfile> forEntity = template.getForEntity(url, GoogleProfile.class);
        return forEntity.getBody();
    }
}
