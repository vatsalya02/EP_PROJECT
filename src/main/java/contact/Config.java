package contact;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class Config {
	public StandardServiceRegistry ssr;
	public Metadata meta;
	public SessionFactory sf;
	public Session ss;
	public Transaction t;
	
	public void configgen() {
		
		this.ssr = new StandardServiceRegistryBuilder().configure("/hibernate.cfg.xml").build();		
		this.meta= new MetadataSources(ssr).getMetadataBuilder().build();
		this.sf = meta.getSessionFactoryBuilder().build();
		this.ss = sf.openSession();
		this.t = ss.beginTransaction();
	}
}
