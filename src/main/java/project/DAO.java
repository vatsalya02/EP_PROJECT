package project;

import java.util.List;


import org.hibernate.query.Query;


public class DAO {
	
public static int insert(Student_pojo p){	
	Config c = new Config();		
	c.configgen();
	c.ss.save(p);
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return 1;
}
public boolean login(String name,String pwd) {
	Config c = new Config();		
	c.configgen();
	Query q=c.ss.createQuery("from Student_pojo where name=:uname and password=:pwd");	
	q.setParameter("uname",name);
	q.setParameter("pwd",pwd);
	Student_pojo p=(Student_pojo)q.uniqueResult();
	System.out.println(p);
	if(p!=null && p.getName().equals(name) && p.getPassword().equals(pwd)) {
		return true;
	}
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return false;	
}
public static boolean displayall(String email)
{
	Config c = new Config();		
	c.configgen();
	Query q=c.ss.createQuery("from Student_pojo where email=:semail");
	q.setParameter("semail",email);
	Student_pojo p=(Student_pojo)q.uniqueResult();
	if(p!=null && p.getEmail().equals(email)) {
		return true;
	}
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return false;
	
}
public static int update(String name,String pwd,String cp){	
	Config c = new Config();		
	c.configgen();
	Query q=c.ss.createQuery("update Student_pojo set password=:pd,con_password=:cpd where name=:sname");
	q.setParameter("pd",pwd);
	q.setParameter("cpd",cp);
	q.setParameter("sname",name);
	int j=q.executeUpdate();
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return j;
}
public static String email(String user)
{
	Config c = new Config();		
	c.configgen();
	Query q=c.ss.createQuery("from Student_pojo where name=:uname");
	q.setParameter("uname",user);
	Student_pojo p=(Student_pojo)q.uniqueResult();
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return p.getEmail();
}
}
