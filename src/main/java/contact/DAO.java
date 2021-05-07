package contact;
public class DAO {
	public static int insert(Contact_Pojo p){	
		Config c = new Config();		
		c.configgen();
		c.ss.save(p);
		c.t.commit();
		c.ss.close();
		c.sf.close();
		return 1;
	}
}
