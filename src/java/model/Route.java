package model;

import javax.persistence.Entity;
@Entity
public class Route extends Bus{
    private String routeid;
    private String checkpoints;

    public String getRouteid() {
        return routeid;
    }


    public void setRouteid(String routeid) {
        this.routeid = routeid;
    }

    public void setCheckpoints(String checkpoints) {
        this.checkpoints = checkpoints;
    }

    public String getCheckpoints() {
        return checkpoints;
    }

}
