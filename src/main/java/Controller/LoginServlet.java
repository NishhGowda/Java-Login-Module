package Controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Entity.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet(value = "/loginuser")
public class LoginServlet extends HttpServlet{

	
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("hibernate");
		
		EntityManager em = emf.createEntityManager();
		
		EntityTransaction et = em.getTransaction();
		
try {

			

			String name=req.getParameter("userName");

			String password=req.getParameter("userpassword");

			Query query= em.createQuery("select u from User u where u.userName=?1");

			query.setParameter(1, name);

			List<User> list=query.getResultList();

			HttpSession session=req.getSession();

			boolean isUserValid=false;

			for(User u:list) {

				if(u.getUserName().equals(name)&&u.getUserpassword().equals(password)) {

					isUserValid=true;

					session.setAttribute("userdata", u);

				}

			}

			if(isUserValid) {

				RequestDispatcher dispatcher=req.getRequestDispatcher("page1.jsp");

				dispatcher.forward(req, resp);

			}

			else {

				RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");

				req.setAttribute("msg", "Check your credentials...");

				dispatcher.forward(req, resp);

			}

			

		} catch (Exception e) {

			e.printStackTrace();

			RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");

			req.setAttribute("msg", "Can not process the request now");

			dispatcher.include(req, resp);

		}
		
		}

	
}
