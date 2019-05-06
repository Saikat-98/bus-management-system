package model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Routecollection {
    @Id
    private String route_id;
    private String route_name;

    public String getRoute_id() {
        return route_id;
    }

    public String getRoute_name() {
        return route_name;
    }

    public void setRoute_id(String route_id) {
        this.route_id = route_id;
    }

    public void setRoute_name(String route_name) {
        this.route_name = route_name;
    }
    
}
