package com.itvedant.web;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
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
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		
		ServletContext ctx=getServletContext();
		EntityManagerFactory emf=(EntityManagerFactory) ctx.getAttribute("emf");
		EntityManager em=emf.createEntityManager();	
		
		int id=Integer.parseInt(request.getParameter("id"));
		
		Customer c=em.find(Customer.class, id);
		
		em.getTransaction().begin();
		em.remove(c);
		em.getTransaction().commit();
		
		Query query =em.createQuery("select c from Customer c");
		
		List<Customer> cust=query.getResultList();
		request.setAttribute("cust", cust);
		
		RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
