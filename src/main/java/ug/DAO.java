package ug;
import java.util.List;

import org.hibernate.query.Query;

import pg.Config;
import pg.PG_Pojo;

import java.util.List;
public class DAO {	
public static int insert(UG_Pojo p){	
	Config c = new Config();		
	c.configgen();
	c.ss.save(p);
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return 1;
}
public static int delete(int id)
{
	Config c = new Config();		
	c.configgen();
	Query q=c.ss.createQuery("delete from UG_Pojo where regno=:id");
	q.setParameter("id",id);
	int j=q.executeUpdate();
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return j;
}
public static UG_Pojo getRecordById(int id){   
    Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("from UG_Pojo where regno=:id");
    q.setParameter("id",id);
    UG_Pojo p =(UG_Pojo) q.uniqueResult();
	c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return p;  
}
public static UG_Pojo ug_profile(String email){   
    Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("from UG_Pojo where email=:email");
    q.setParameter("email",email);
    UG_Pojo p =(UG_Pojo) q.uniqueResult();
	c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return p;  
}
public static List<UG_Pojo> display(){
	Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("from UG_Pojo");
	List<UG_Pojo> list=q.list();	
	for(UG_Pojo e:list) {
		System.out.println(e.getRegno());	
	}
	c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return list;
}
public static List<UG_Pojo> ug_check(float cgpa) {
	Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("from UG_Pojo where cgpa=:c");
    q.setParameter("c",cgpa);
	List<UG_Pojo> list=q.list();	
	c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return list;
}
public static int update(UG_Pojo p) {
	Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("update UG_Pojo set name=:sname,year=:syear,email=:semail,department=:dep,address=:add,gender=:gender,tboard=:tb,tper=:tp,tyear=:ty,iboard=:ib,iper=:ip,iyear=:iy,phone_no=:phno,backlogs=:b where regno=:id");
    q.setParameter("id",p.getRegno());
    q.setParameter("sname",p.getName());
    q.setParameter("syear",p.getYear());
    q.setParameter("semail",p.getEmail());
    q.setParameter("dep",p.getDepartment());
    q.setParameter("add",p.getAddress());
    q.setParameter("gender",p.getGender());
    q.setParameter("tb",p.getTboard());
    q.setParameter("tp",p.getTper());
    q.setParameter("ty",p.getTyear());
    q.setParameter("ib",p.getIboard());
    q.setParameter("ip",p.getIper());
    q.setParameter("iy",p.getIyear());
    q.setParameter("phno",p.getPhone_no());
    q.setParameter("b",p.getBacklogs()); 
    int j=q.executeUpdate();
    System.out.println(p);
    c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return j;	
}
public boolean checkall(String email) {
	Config c = new Config();		
	c.configgen();
	Query q=c.ss.createQuery("from UG_Pojo where email=:email");	
	q.setParameter("email",email);
	
	UG_Pojo p=(UG_Pojo)q.uniqueResult();
	if(p!=null && p.getEmail().equals(email)) {
		return true;
	}
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return false;	
}
}
