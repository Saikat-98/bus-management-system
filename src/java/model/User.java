package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Registration")
public class User {
    @Id
    private String username;
    private String emailid;
    private String password;
    private String accounttype;
    private String mobile;
    
    public String getUsername() {
        return username;
    }

    public String getEmailid() {
        return emailid;
    }

    public String getPassword() {
        return password;
    }

    public String getAccounttype() {
        return accounttype;
    }

    public String getMobile() {
        return mobile;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAccounttype(String accounttype) {
        this.accounttype = accounttype;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    
    public boolean equals(Object o){
        User u =(User)o;
        if((u.getUsername().equals(this.username))&&(u.getPassword().equals(this.password))&&(u.getAccounttype().equals(this.accounttype)))
            return true;
        return false;
    }
}
