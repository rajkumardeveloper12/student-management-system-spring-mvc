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
public class EducationController {
	static EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
	static EntityTransaction  et=em.getTransaction();
	@RequestMapping("/education")
	public ModelAndView Education(ModelAndView mv,@RequestParam int id) {
		mv.setViewName("education.jsp");
		mv.addObject("id", id);
		System.out.println("gdshajdhugjwqhgfvsgh");
		System.err.println(id);
		return mv;
	}
	@RequestMapping("/addedu")
	public ModelAndView AddEducation(ModelAndView mv,
									@RequestParam String uname,
									@RequestParam String cname,
									@RequestParam String degree,
									@RequestParam String department,
									@RequestParam String qualification,
									@RequestParam int yop,
									@RequestParam double cgpa,
									@RequestParam int id) {
		Student s = em.find(Student.class, id);
		mv.addObject("s", s);
		et.begin();
		em.persist(new Education(0,uname,cname,degree,department, qualification, yop, cgpa, s));
		et.commit();
		if(qualification.equals("Yes")) {
			s.setDegree(degree);
			System.out.println(qualification);
			System.out.println(degree);
		}
		Query q = em.createQuery("select e from Education e where e.student.id=:id");
		q.setParameter("id",id);
		List el = q.getResultList();
		mv.addObject("education", el);
		
		Query ql = em.createQuery("select a from Address a where a.student.id=:id");
		ql.setParameter("id",id);
		List al = ql.getResultList();
		mv.addObject("address", al);
		
		mv.setViewName("updatestd.jsp");
		return mv;
	}
	
	@RequestMapping("/deleteedu")
	public ModelAndView DeleteEdu(ModelAndView mv,@RequestParam int id,@RequestParam int sid) {
		Education ul = em.find(Education.class,id);
		Student s = em.find(Student.class, sid);
		if(ul!=null) {
			et.begin();
			em.remove(ul);
			et.commit();
			mv.addObject("s", s);
			Query q = em.createQuery("select e from Education e where e.student.id=:id");
			q.setParameter("id",sid);
			List el = q.getResultList();
			mv.addObject("education", el);
			
			Query ql = em.createQuery("select a from Address a where a.student.id=:id");
			ql.setParameter("id",sid);
			List al = ql.getResultList();
			mv.addObject("address", al);
			mv.setViewName("updatestd.jsp");
			return mv;
		}
		mv.addObject("s", s);

		Query q = em.createQuery("select e from Education e where e.student.id=:id");
		q.setParameter("id",sid);
		List el = q.getResultList();
		mv.addObject("education", el);
		
		Query ql = em.createQuery("select a from Address a where a.student.id=:id");
		ql.setParameter("id",sid);
		List al = ql.getResultList();
		mv.addObject("address", al);
		
		mv.setViewName("updatestd.jsp");
		
		return mv;
	}
	
}
