package home_and_login;

import com.opensymphony.xwork2.ActionSupport;
import student.Student;
import sun.security.util.Password;
import faculty.Faculty;

public class Login extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7213897077680230125L;

	Student stud;
	Faculty fac;
	String email_id;
	Password password;
	private String[] user_type;
	
	public Login() {
		stud = new Student();
		fac = new Faculty();
	}

	public String[] getUser_type() {
		return user_type;
	}

	public void setUser_type(String[] user_type) {
		this.user_type = user_type;
	}

	@Override
	public String execute() throws Exception {
		
		if(this.getUser_type().equals("Student"))
		{
			email_id = stud.getEmail_id();
			password = stud.getPassword();
			
			email_id.equals("rutuja");
			password.equals("123");
			
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	
	}
	
}
