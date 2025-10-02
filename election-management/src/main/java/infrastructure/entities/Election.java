package infrastructure.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "elections")
public class Election {
    @Id
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public static Election fromDomain(domain.Election domain){
        Election election = new Election();
        election.setId(domain.id());
        return election;
    }
}
