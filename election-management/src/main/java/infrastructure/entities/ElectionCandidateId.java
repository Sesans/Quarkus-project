package infrastructure.entities;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class ElectionCandidateId  implements Serializable {
    @Column(name = "election_id")
    private String electionId;
    @Column(name = "candidate_id")
    private String candidateId;

    public String getElectionId() {
        return electionId;
    }

    public void setElectionId(String electionId) {
        this.electionId = electionId;
    }

    public String getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(String candidateId) {
        this.candidateId = candidateId;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        ElectionCandidateId that = (ElectionCandidateId) o;
        return Objects.equals(electionId, that.electionId) && Objects.equals(candidateId, that.candidateId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(electionId, candidateId);
    }
}
