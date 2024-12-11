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
public class AddressController {
	static EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
	static EntityTransaction  et=em.getTransaction();
	
	@RequestMapping("/address")
	public ModelAndView Address(ModelAndView mv,@RequestParam int id) {
		mv.setViewName("address.jsp");
		mv.addObject("id", id);
		return mv;
	}
	@RequestMapping("/addaddress")
	public ModelAndView AddAddress(ModelAndView mv,
								   @RequestParam String houseNo,
								   @RequestParam String street,
								   @RequestParam String city,
								   @RequestParam String state,
								   @RequestParam String country,
								   @RequestParam int pincode,
								   @RequestParam String addressStatus,
								   @RequestParam long phone,
								   @RequestParam int id) {
		Student s = em.find(Student.class, id);
		mv.addObject("s", s);
		et.begin();
		em.persist(new Address(0,houseNo, street, city, state, country, pincode, addressStatus, phone,s));
		et.commit();
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
	public ModelAndView ViewAddress(ModelAndView mv) {
		List ul = em.createQuery("from Address").getResultList();
		mv.setViewName("updatestd.jsp");
		mv.addObject("address", ul);
		return mv;
	}
	@RequestMapping("/deleteaddress")
	public ModelAndView DeleteAddress(ModelAndView mv,@RequestParam int id,@RequestParam int sid) {
		Address ul = em.find(Address.class,id);
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
