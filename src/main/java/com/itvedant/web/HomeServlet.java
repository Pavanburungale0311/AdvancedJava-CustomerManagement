package com.itvedant.web;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itvedant.entity.Customer;


/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @throws IOException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("username");
		String password=request.getParameter("password");
		PrintWriter out=response.getWriter();
		if(name.equals(password)) {
		HttpSession session=request.getSession();
		session.setAttribute("name", name);
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("pu");
		ServletContext ctx=getServletContext();
		ctx.setAttribute("emf", emf);
		
		EntityManager em=emf.createEntityManager();
		Query query =em.createQuery("select c from Customer c");
		
		List<Customer> cust=query.getResultList();
		request.setAttribute("cust",cust);
		RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
		rd.include(request,response);
		}else {
			out.println("Password Missmatch....!!");
		}
	
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
