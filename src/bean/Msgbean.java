package bean;

public class Msgbean {
public Msgbean(int id, String name, String mail, String msg, String indata, String updata) {
		super();
		this.id = id;
		this.name = name;
		this.mail = mail;
		this.msg = msg;
		this.indata = indata;
		this.updata = updata;
	}
public Msgbean(String name, String mail, String msg) {
	super();
	this.name = name;
	this.mail = mail;
	this.msg = msg;
}
int id;
String name;
String mail;
String msg;
String indata;
String updata;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getMail() {
	return mail;
}
public void setMail(String mail) {
	this.mail = mail;
}
public String getMsg() {
	return msg;
}
public void setMsg(String msg) {
	this.msg = msg;
}
public String getIndata() {
	return indata;
}
public void setIndata(String indata) {
	this.indata = indata;
}
public String getUpdata() {
	return updata;
}
public void setUpdata(String updata) {
	this.updata = updata;
}

}
