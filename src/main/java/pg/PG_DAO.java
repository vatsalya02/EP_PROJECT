
package pg;
import java.util.List;




import org.hibernate.query.Query;

import project.Config;
import project.Student_pojo;

import java.util.List;
public class PG_DAO {	
public static int pg_insert(PG_Pojo p){	
	Config c = new Config();		
	c.configgen();
	c.ss.save(p);
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return 1;
}
public static int pg_delete(int stid)
{
	Config c = new Config();		
	c.configgen();
	Query q=c.ss.createQuery("delete from PG_Pojo where regno=:sid");
	q.setParameter("sid",stid);
	int j=q.executeUpdate();
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return j;
}
public static PG_Pojo pg_getRecordById(int id){   
    Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("from PG_Pojo where regno=:id");
    q.setParameter("id",id);
    PG_Pojo p =(PG_Pojo) q.uniqueResult();
	c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return p;  
}
public static PG_Pojo pg_profile(String email){   
    Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("from PG_Pojo where email=:email");
    q.setParameter("email",email);
    PG_Pojo p =(PG_Pojo) q.uniqueResult();
	c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return p;  
}
public static List<PG_Pojo> pg_display(){
	Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("from PG_Pojo");
	List<PG_Pojo> list=q.list();	
	for(PG_Pojo e:list) {
		System.out.println(e.getRegno());	
	}
	c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return list;
}
public static int pg_update(PG_Pojo p) {
	Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("update PG_Pojo set name=:sname,year=:syear,email=:semail,department=:dep,address=:add,gender=:gender,tboard=:tb,tper=:tp,tyear=:ty,iboard=:ib,iper=:ip,iyear=:iy,phone_no=:phno,bper=:bp,byear=:by where regno=:id");
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
    q.setParameter("bp",p.getBper()); 
    q.setParameter("by",p.getByear()); 
    int j=q.executeUpdate();
    c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return j;	
}
public static List<PG_Pojo> check(int cgpa) {
	Config c = new Config();		
    c.configgen();
    Query q=c.ss.createQuery("from PG_Pojo where bper=:c");
    q.setParameter("c",cgpa);
	List<PG_Pojo> list=q.list();	
	for(PG_Pojo e:list) {
		System.out.println(e.getRegno());	
	}
	c.t.commit();
	c.ss.close();
	c.sf.close(); 
	return list;
}
public boolean checkall(String email) {
	Config c = new Config();		
	c.configgen();
	Query q=c.ss.createQuery("from PG_Pojo where email=:email");	
	q.setParameter("email",email);
	
	PG_Pojo p=(PG_Pojo)q.uniqueResult();
	if(p!=null && p.getEmail().equals(email)) {
		return true;
	}
	c.t.commit();
	c.ss.close();
	c.sf.close();
	return false;	
}

}
