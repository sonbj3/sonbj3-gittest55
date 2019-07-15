package mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;


	public class GoogleAuthentication extends Authenticator {
	    PasswordAuthentication passAuth;
	    
	    
	    public GoogleAuthentication() {
	        passAuth = new PasswordAuthentication("sonbono12", "wnsdl2684");
	    }
	    
	    public PasswordAuthentication getPasswordAuthentication() {
	        return passAuth;
	    }
	}
