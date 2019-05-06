package model;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class BusDAO {
    public void save(Bus b){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(b);
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
    public boolean checkRoute(String id,String name){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        List<Routecollection> list=null;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("from Routecollection");
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
        for(Routecollection r:list)
            if(id.equals(r.getRoute_id())&&name.equals(r.getRoute_name()))
                return true;
        return false;
    }
    public void save(Route r){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(r);
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
    public boolean save(Routecollection r){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        List<Routecollection> list=null;
        boolean flag=true;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("from Routecollection");
            list=query.list();
            for(Routecollection ob:list){
                if((ob.getRoute_id().equals(r.getRoute_id()))){
                    flag=false;
                    break;
                }
            }
            session.save(r);
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        return flag;
    }
    public boolean updateBusNumber(String bus_number,String arrival_time,String destination_time){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        List<Bus> list=null;
        boolean flag=false;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("from Bus where busnumber = :n");
            query.setParameter("n",bus_number);
            list=query.list();
            if(list.size()>0)
                for(Bus ob:list){
                    ob.setArrivaltime(arrival_time);
                    ob.setDestinationtime(destination_time);
                    session.save(ob);
                    flag=true;
                    break;
                }
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        return flag;
    }
    public boolean deleteBusNumber(String bus_number){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        int rows=0;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("delete from Bus where busnumber = :n");
            query.setParameter("n",bus_number);
            rows=query.executeUpdate();
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        if(rows!=0)
            return true;
        return false;
    }
    public boolean updateDriver(String bus_number,String driver_id,String driver_name){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        List<Bus> list=null;
        boolean flag=false;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("from Bus where busnumber = :n");
            query.setParameter("n",bus_number);
            list=query.list();
            if(list.size()>0)
                for(Bus ob:list){
                    ob.setBusdriverid(driver_id);
                    ob.setBusdrivername(driver_name);
                    session.save(ob);
                    flag=true;
                    break;
                }
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        return flag;
    }
    public boolean deleteDriver(String driver_number){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        int rows=0;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("delete from Bus where busdriverid = :n");
            query.setParameter("n",driver_number);
            rows=query.executeUpdate();
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        if(rows!=0)
            return true;
        return false;
    }
    public boolean updateRoute(String route_id,String route_point){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        List<Routecollection> list=null;
        boolean flag=false;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("from Routecollection where route_id = :n");
            query.setParameter("n",route_id);
            list=query.list();
            if(list.size()>0)
                for(Routecollection ob:list){
                    ob.setRoute_name(route_point);
                    session.save(ob);
                    flag=true;
                    break;
                }
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        if(flag==true)
            return true;
        return false;
    }
    public boolean deleteRoutes(String route_number){
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        int rows=0;
        try{
            cf=new Configuration();
            cf.configure("/cfgpackage/hibernate.cfg.xml");
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Query query=session.createQuery("delete from Routecollection where route_id = :n");
            query.setParameter("n",route_number);
            rows=query.executeUpdate();
            tx.commit();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        if(rows!=0)
            return true;
        return false;
    }
}
