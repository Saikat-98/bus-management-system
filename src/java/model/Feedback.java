package model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Feedback {
    @Id
    private String email;
    private String feedback;

    public String getEmail() {
        return email;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
    
}
