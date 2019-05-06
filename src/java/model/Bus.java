package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Table(name="bus")
@Inheritance(strategy= InheritanceType.JOINED)
public class Bus{
    @Id
    private String busnumber;
    private String busdriverid;
    private String busdrivername;
    private String busdrivermobile;
    private String arrivaltime;
    private String destinationtime;
    
    public String getBusnumber() {
        return busnumber;
    }

    public String getBusdriverid() {
        return busdriverid;
    }

    public String getBusdrivername() {
        return busdrivername;
    }

    public String getBusdrivermobile() {
        return busdrivermobile;
    }

    public String getArrivaltime() {
        return arrivaltime;
    }

    public String getDestinationtime() {
        return destinationtime;
    }

    public void setBusnumber(String busnumber) {
        this.busnumber = busnumber;
    }

    public void setBusdriverid(String busdriverid) {
        this.busdriverid = busdriverid;
    }

    public void setBusdrivername(String busdrivername) {
        this.busdrivername = busdrivername;
    }

    public void setBusdrivermobile(String busdrivermobile) {
        this.busdrivermobile = busdrivermobile;
    }

    public void setArrivaltime(String arrivaltime) {
        this.arrivaltime = arrivaltime;
    }

    public void setDestinationtime(String destinationtime) {
        this.destinationtime = destinationtime;
    }

}
