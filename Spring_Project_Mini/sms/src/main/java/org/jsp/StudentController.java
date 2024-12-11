package org.jsp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {
	static EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
	static EntityTransaction  et=em.getTransaction();
	
	//Student Controller
	
	@RequestMapping("/add")
	public ModelAndView Add(ModelAndView mv) {
		mv.setViewName("add.jsp");
		return mv;
	}
	@RequestMapping("/addstd")
	public ModelAndView AddStudent(ModelAndView mv,
								   @RequestParam String name,
								   @RequestParam String rollNo,
								   @RequestParam String email,
								   @RequestParam long phone,
								   @RequestParam int yop
								   ) {
		et.begin();
		em.persist(new Student(0,name,rollNo,email,phone,null,yop, null));
		et.commit();
		return ViewStd(mv);
	}
	@RequestMapping("home")
	public ModelAndView ViewStd(ModelAndView mv) {
		List ul = em.createQuery("from Student").getResultList();
		mv.setViewName("index.jsp");
		mv.addObject("std", ul);
		return mv;
	}
	@RequestMapping("/delete")
	public ModelAndView Delete(ModelAndView mv,@RequestParam int id) {
		Student s = em.find(Student.class,id);
		if(s!=null) {
			et.begin();
			List<Education> educations = em.createQuery(
		            "SELECT e FROM Education e WHERE e.student.id = :studentId", Education.class)
		            .setParameter("studentId", id)
		            .getResultList();
		        for (Education edu : educations) {
		            em.remove(edu);
		        }
		            List<Address> address = em.createQuery(
		                    "SELECT a FROM Address a WHERE a.student.id = :studentId", Address.class)
		                    .setParameter("studentId", id)
		                    .getResultList();
		                for (Address add : address) {
		                    em.remove(add);
		                }
			em.remove(s);
			et.commit();
			
			List ul = em.createQuery("from Student").getResultList();
			mv.setViewName("index.jsp");
			mv.addObject("std", ul);
			return mv;
		}
		List ul = em.createQuery("from Student").getResultList();
		mv.setViewName("index.jsp");
		mv.addObject("std", ul);
		return mv;
	}
	@RequestMapping("/updatepage")
	public ModelAndView UpdatePage(ModelAndView mv,@RequestParam int id) {
		Student s = em.find(Student.class, id);
		mv.setViewName("updatestd.jsp");
		mv.addObject("s", s);
		Query q = em.createQuery("select e from Education e where e.student.id=:id");
		q.setParameter("id",id);
		List el = q.getResultList();
		mv.addObject("education", el);
		
		Query ql = em.createQuery("select a from Address a where a.student.id=:id");
		ql.setParameter("id",id);
		List al = ql.getResultList();
		mv.addObject("address", al);
		
		return mv;
		
	}
	@RequestMapping("/updatestd")
	public ModelAndView UpdateStd(ModelAndView mv,
							  @RequestParam int id,
							  @RequestParam String name,
							  @RequestParam String rollNo,
							  @RequestParam String email,
							  @RequestParam long phone,
							  @RequestParam int yop) {
		Student s = em.find(Student.class, id);
		s.setId(id);
		s.setName(name);
		s.setRollNo(rollNo);
		s.setEmail(email);
		s.setPhone(phone);
		s.setYop(yop);
		et.begin();
		em.merge(s);
		et.commit();
		return ViewStd(mv);
	}
	
	
}
