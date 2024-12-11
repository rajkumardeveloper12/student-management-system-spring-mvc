package org.jsp;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	static EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
	static EntityTransaction et=em.getTransaction();
	@RequestMapping("registerpage")
	public ModelAndView RegisterPage(ModelAndView mv) {
		mv.setViewName("register.jsp");
		return mv;
	}
	@RequestMapping("loginpage")
	public ModelAndView LoginPage(ModelAndView mv) {
		mv.setViewName("login.jsp");
		return mv;
	}
	@RequestMapping("/register")
	public ModelAndView Register(ModelAndView mv,
								@RequestParam String name,
								@RequestParam String email,
								@RequestParam String password) {
		
		et.begin();
		em.persist(new Register(0,name,email,password));
		et.commit();
		mv.setViewName("login.jsp");
		return mv;
	}
	@RequestMapping("/login")
	public ModelAndView Login(ModelAndView mv,@RequestParam String username,@RequestParam String password) {
		Query q = em.createQuery("select r from Register r where email=:username AND password=:pass");
		q.setParameter("username", username);
		q.setParameter("pass", password);
		
		mv.setViewName("index.jsp");
		return mv;
	}
	@RequestMapping("logout")
	public ModelAndView Logout(ModelAndView mv) {
		mv.setViewName("login.jsp");
		return mv;
	}
}
