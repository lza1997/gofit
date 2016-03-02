package org.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DAO.UserinfoDAO;
import org.been.Userinfo;

public class test extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Userinfo userinfo=null;
		UserinfoDAO userinfoDAO = new UserinfoDAO();
		String Name = request.getParameter("Name");
		String Value = request.getParameter("Value");
		System.out.println(Value);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		userinfo = userinfoDAO.isValidUser(Name, Value);
		if (userinfo!=null) {
			out.print("Yes!");
		}
		else {
			out.print("No!");
		}
		out.flush();
		out.close();
	}

}
