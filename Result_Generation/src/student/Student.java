package student;

import java.util.Date;

import sun.security.util.Password;

public class Student{
	
	private char prn, contact, sex, shift;
	private String first_name,last_name,middle_name;
	private String email_id, answer;
	private int secquest_no, course_code;
	private Date joining_yr;
	private Password password;
	public char getPrn() {
		return prn;
	}
	public void setPrn(char prn) {
		this.prn = prn;
	}
	public char getContact() {
		return contact;
	}
	public void setContact(char contact) {
		this.contact = contact;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	public char getShift() {
		return shift;
	}
	public void setShift(char shift) {
		this.shift = shift;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getMiddle_name() {
		return middle_name;
	}
	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
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
	public int getSecquest_no() {
		return secquest_no;
	}
	public void setSecquest_no(int secquest_no) {
		this.secquest_no = secquest_no;
	}
	public int getCourse_code() {
		return course_code;
	}
	public void setCourse_code(int course_code) {
		this.course_code = course_code;
	}
	public Date getJoining_yr() {
		return joining_yr;
	}
	public void setJoining_yr(Date joining_yr) {
		this.joining_yr = joining_yr;
	}
	
}
