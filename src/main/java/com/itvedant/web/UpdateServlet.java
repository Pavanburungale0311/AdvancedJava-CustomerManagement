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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String city=request.getParameter("city");
		String street=request.getParameter("street");
		String state=request.getParameter("state");
		int zipcode=Integer.parseInt(request.getParameter("zipcode"));
		String bookproduct =request.getParameter("bookproduct");
		String bookingdate =request.getParameter("bookingdate");
		String supplydate =request.getParameter("supplydate");
		
		Customer c=em.find(Customer.class,id);
		Customer c1=new Customer();
		c1.setCid(id);
		c1.setCname(name);
		c1.setPhone(phone);
		c1.setEmail(email);
		c1.setCity(city);
		c1.setStreet(street);
		c1.setState(state);
		c1.setZipcode(zipcode);
		c1.setBook_Product(bookproduct);
		c1.setBooking_date(bookingdate);
		c1.setSupply_date(supplydate);
		
		em.getTransaction().begin();
		em.merge(c1);
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
