package Controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import Entity.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/createuser")
public class CreateUserServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
		
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("hibernate");
			
			EntityManager em = emf.createEntityManager();
			
			EntityTransaction et = em.getTransaction();
			
			String name = req.getParameter("userName");
			String password = req.getParameter("userpassword");
			String phno = req.getParameter("userPhno");
			int age = Integer.parseInt(req.getParameter("userAge"));
			
			User user = new User (name, password, phno, age);
			
			et.begin();
			
			em.persist(user);
			
			et.commit();
			
			RequestDispatcher dispacther = req.getRequestDispatcher("home.jsp");
			
			req.setAttribute("msg", "Account Created...");
			
			dispacther.include(req, resp);
			
		}
		catch (Exception e) {
			
			RequestDispatcher dispacther = req.getRequestDispatcher("home.jsp");
			
			req.setAttribute("msg", "Unable to Create Account...");
			
			dispacther.include(req, resp);
			
		}
		
		
	}

	
}
