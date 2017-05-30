package com.lup.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lup.poster.TwitterPoster;

/**
 * Servlet implementation class TwitterController
 */
@WebServlet(description = "it will handle the twitter post", urlPatterns = { "/postontwitter" })
public class TwitterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public TwitterController() {
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			TwitterPoster.post(request.getParameter("statusMsg"), "D:\\WorkShop\\Projects\\LineUp\\WebContent\\" + request.getParameter("imgPath"));
			request.setAttribute("message", "Post has been submitted successfully. Please check your Twitter profile.");
		} catch (Exception e) {
			request.setAttribute("message", "Internal Server error. Please try after some times. ");
			e.printStackTrace();
		}
		request.getRequestDispatcher("gallery.jsp").forward(request, response);
	}

}
