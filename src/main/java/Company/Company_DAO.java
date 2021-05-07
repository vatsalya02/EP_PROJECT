package Company;

import java.util.List;

import org.hibernate.query.Query;


public class Company_DAO {
	public static int company_insert(Company_pojo p){	
		Config c = new Config();		
		c.configgen();
		c.ss.save(p);
		c.t.commit();
		c.ss.close();
		c.sf.close();
		return 1;
	}
	public static List<Company_pojo> company_display(){
		Config c = new Config();		
	    c.configgen();
	    Query q=c.ss.createQuery("from Company_pojo");
		List<Company_pojo> list=q.list();	
		c.t.commit();
		c.ss.close();
		c.sf.close(); 
		return list;
	}
}
