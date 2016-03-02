package org.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.been.Userinfo;
import org.interceptor.AuthenticationInterceptor;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware{

	private Map session;
	@Override
	public String execute() throws Exception {
		Userinfo userinfo = (Userinfo) session.get(AuthenticationInterceptor.USER_SESSION_KEY);
		if (userinfo!=null) {
			session.remove(AuthenticationInterceptor.USER_SESSION_KEY);
			session.remove("cart");
			session.remove("order");
			addActionError("ÒÑ×¢Ïú");
		}
		return SUCCESS;	
	}
	public void setSession(Map session) {
		this.session = session;
	}
	

}
