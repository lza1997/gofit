package org.action;

import java.util.Map;
import org.DAO.UserinfoDAO;
import org.apache.struts2.interceptor.SessionAware;
import org.been.Userinfo;
import org.interceptor.AuthenticationInterceptor;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
	
	private String username;
	private String pwd;
	private Userinfo userinfo;
	private Map<String,Object> session;
	UserinfoDAO userinfoDAO = new UserinfoDAO();
	
	public String execute() throws Exception {
		
		System.out.println(username);
		System.out.println(pwd);
		userinfo = userinfoDAO.isValidUser(username, pwd);
		if(userinfo!=null){
				session.put(AuthenticationInterceptor.USER_SESSION_KEY, userinfo);
            return SUCCESS;
        }else{
            addActionError("µÇÂ½Ê§°Ü");
            return INPUT ;
        }
        }
		
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }


}
