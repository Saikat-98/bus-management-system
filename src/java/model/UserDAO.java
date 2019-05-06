package model;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserDAO {
    public void save(User u){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(u);
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
    }
    public boolean check(User original){
        User db=null;
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            db=(User)session.get(User.class, original.getUsername());
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        if(db==null)
            return false;
        return original.equals(db);
    }
    public List<User> getDetails(User u){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        List<User> list=null;
        String username=u.getUsername();
        String password=u.getPassword();
        String account_type=u.getAccounttype();
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("from User where username = :u and password =:p and accounttype= :a");
            query.setParameter("u",username);
            query.setParameter("p",password);
            query.setParameter("a",account_type);
            list=query.list();
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        return list;
    }
}
