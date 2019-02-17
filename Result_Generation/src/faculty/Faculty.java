package faculty;

import sun.security.util.Password;

public class Faculty {

	private int ID;
	private String first_name,middle_name, last_name, email_id,  answer;
	private char contact;
	private int course_code, secquest_no;
	private Password password;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getMiddle_name() {
		return middle_name;
	}
	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public Password getPassword() {
		return password;
	}
	public void setPassword(Password password) {
		this.password = password;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public char getContact() {
		return contact;
	}
	public void setContact(char contact) {
		this.contact = contact;
	}
	public int getCourse_code() {
		return course_code;
	}
	public void setCourse_code(int course_code) {
		this.course_code = course_code;
	}
	public int getSecquest_no() {
		return secquest_no;
	}
	public void setSecquest_no(int secquest_no) {
		this.secquest_no = secquest_no;
	}
	
	
}
