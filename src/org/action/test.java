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
		response.sendRedirect("alipayapi.jsp?" +
		  		"WIDout_trade_no=1111111&WIDsubject=test&WIDtotal_fee=0.3&WIDbody=test&WIDshow_url=www.baidu.com");
	}

}
